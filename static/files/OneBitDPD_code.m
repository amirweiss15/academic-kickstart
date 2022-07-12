% Script - One-Bit Direct Position Determination of Narrowband Gaussian Signals
%
% Other m-files required: Compute_sources_ML_MMSE_estimate.m
% Subfunctions: none
% MAT-files required: none
%
% Based on the paper:
%			 "One-Bit Direct Position Determination of Narrowband Gaussian
%             Signals", Amir Weiss and Gregory W. Wornell,
%			  in Proc. of IEEE Workshop on Statistical Signal Processing
%             (SSP), pp. 466–470, July 2021
%
% Author: Amir Weiss
% email: amirweiss15@gmail.com
% Website: http://www.weissamir.com
% July 2022; Last revision: 12-Jul-2022
%------------- BEGIN CODE --------------
clear;
close all;
clc;

M = 4; % number of array elements (assuming ULA)
SNR_dB = 10; % [dB]
SNR_lin = 10^(SNR_dB/10);
noise_power = 1/SNR_lin;
L = 4; % number of arrays
array = (0:M-1)*.5; % array elements location in wavelength
array_angles = 90*ones(1,M); % [deg] ULA rotation
max_freq = 200*10^3;
N = 32; % smaple size

fft_coef = 1/sqrt(N);
ifft_coef = sqrt(N);

x0 = 1; % emitter x position [km]
y0 = 0.5; % emitter y position [km]
x_array = [2.5 ; 2.5 ; -2.5 ; -2.5]; % x coordinate of arrays [km]
y_array = [2.5 ; -2.5 ; 2.5 ; -2.5]; % y coordinate of arrays [km]

C = 299792.458; % [km/sec]

w = (0:1:N-1)*2*pi*max_freq/N;

% Generate the source envelope
S = (randn(1,N) + 1i*randn(1,N))./sqrt(2);

% Create the measurements
R = zeros(M,N,L);
R_bar = zeros(M,N,L);
Y = zeros(M,N,L);
Y_bar = zeros(M,N,L);

for l=1:L
    
    b_l = 0.995+0.1*(randn + 1i*randn)./sqrt(2);
    
    theta0 = atan2(y0-y_array(l),x0-x_array(l))*180/pi - array_angles(l);
    tau0 = (1/C) * ((x0-x_array(l)).^2+(y0-y_array(l)).^2).^0.5;
    
    % Assuming ULA
    a_theta0 = M^(-.5)*exp(-1i*2*pi*array'*cos(theta0*pi/180));
    
    Noise = sqrt(noise_power)*(randn(M,N) + 1i*randn(M,N))./sqrt(2);
    
    R_bar(:,:,l) = b_l * a_theta0 * (S.*exp(-1i*tau0'*w)) + Noise;
    
    R(:,:,l) = ifft_coef*ifft(R_bar(:,:,l),[],2);
    
    Y(:,:,l) = ( sign(real(R(:,:,l))) + 1i*sign(imag(R(:,:,l))) )/sqrt(2);
    
    Y_bar(:,:,l) = fft_coef*fft(Y(:,:,l),[],2);
    
end

x_cand_position = -2.5:0.05:2.5;
y_cand_position = -2.5:0.05:2.5;

Q_DPD = zeros(length(y_cand_position),length(x_cand_position));
Q_DPD_unquantized = zeros(length(y_cand_position),length(x_cand_position));

h_wait = waitbar(0,'Sweeping Locations');
for x_ind=1:1:length(x_cand_position)
    x_cand = x_cand_position(x_ind);
    
    for y_ind=1:1:length(y_cand_position)
            
        y_cand = y_cand_position(y_ind);
        a_cand = zeros(M,L);
        U_cand = zeros(N,L);
        U_cand_unquantized = zeros(N,L);
        R_cand = zeros(N,M,L);
        for l=1:L
            theta_cand = atan2(y_cand-y_array(l),x_cand-x_array(l)) - array_angles(l)*pi/180;
            tau_cand = (1/C) * ((x_cand-x_array(l)).^2+(y_cand-y_array(l)).^2).^0.5;
            R_cand(:,:,l) = ( exp(-1i*w'*tau_cand) ).*(Y_bar(:,:,l)');
            a_cand(:,l) = exp(-1i*2*pi*array'*cos(theta_cand)); % ULA
            U_cand(:,l) = ( exp(-1i*w'*tau_cand) ).*(Y_bar(:,:,l)')*a_cand(:,l);
            U_cand_unquantized(:,l) = ( exp(-1i*w'*tau_cand) ).*(R_bar(:,:,l)')*a_cand(:,l);
        end
        
        Q_DPD_unquantized(y_ind,x_ind) = max(real(eig(U_cand_unquantized'*U_cand_unquantized/N)));
        
        D_cand = zeros(L,L);
        
        for l1=1:L
            for l2=l1:L
                R_l1_l2 = R_cand(:,:,l1)'*R_cand(:,:,l2)/N;
                R_bar_l1_21 = sin( (pi/2)*real(R_l1_l2) ) + 1i*sin( (pi/2)*imag(R_l1_l2) );
                D_cand(l1,l2) = (a_cand(:,l1)')*R_bar_l1_21*a_cand(:,l2);
                D_cand(l2,l1) = conj(D_cand(l1,l2));
            end
        end
        
        Q_DPD(y_ind,x_ind) = max(real(eig(D_cand)));
        
    end
    waitbar(x_ind/length(x_cand_position),h_wait);
end
close(h_wait);

figure;
set(gcf,'Position',[500 300 1000 700])
subplot(1,2,1);
imagesc(x_cand_position,y_cand_position,Q_DPD);
hold;
plot(x0,y0,'rx','LineWidth',2,'MarkerSize',10);
title('$Q_{\rm{OB-DPD}}$','Interpreter','latex');
xlabel('$x$ [Km]','Interpreter','latex');
ylabel('$y$ [Km]','Interpreter','latex');
set(gca,'FontSize',15);
set(gca,'FontName','CMU Serif');
set(gca,'YDir','normal');
leg = legend('True Emitter Location','location','northeast');
grid;
set(leg,'FontName','CMU Serif');
set(leg,'FontSize',15);
set(leg,'Interpreter','latex')
axis square;

subplot(1,2,2);
imagesc(x_cand_position,y_cand_position,Q_DPD_unquantized);
hold;
plot(x0,y0,'rx','LineWidth',2,'MarkerSize',10);
title('$Q_{\rm{DPD}}$','Interpreter','latex'); 
xlabel('$x$ [Km]','Interpreter','latex');
ylabel('$y$ [Km]','Interpreter','latex');
set(gca,'FontSize',15);
set(gca,'FontName','CMU Serif');
set(gca,'YDir','normal');
leg = legend('True Emitter Location','location','northeast');
grid;
set(leg,'FontName','CMU Serif');
set(leg,'FontSize',15);
set(leg,'Interpreter','latex')
axis square;
%------------- BEGIN CODE --------------