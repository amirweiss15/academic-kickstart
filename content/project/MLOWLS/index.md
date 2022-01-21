+++
# Project title.
title = "Asymptotically Optimal Blind Calibration"

# Date this page was created.
date = 2022-01-21T00:00:00

# Project summary to display on homepage.
summary = "Matlab package for blind calibration of uniform linear sensor arrays for narrowband signals"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
# tags = ["Deep Learning"]

# Optional external URL for project (replaces project detail page).
# external_link = ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides = "example-slides"

# Links (optional).
# url_pdf = ""
# url_slides = ""
# url_video = ""
# url_code = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# url_custom = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com/georgecushen"}]

# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder.
[image]
  # Caption (optional)
  caption = "Simplified visualization of a signal's wavefront impinging on a uniform linear array."
  preview_only = true
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  # focal_point = "Center"

+++

This package contains the implementation of the blind calibration method of uniform linear arrays presented in [1]. The method is asymptotically optimal for Gaussian sources, but provides enhanced calibration even for non-Gaussian signals, by further exploiting the information contained in the second-order statistics of the measured signals. The method is “almost” linear, in the sense that except for application of simple, elementwise nonlinear operations, the estimates are computed by solving a system of linear equations.

To download the Matlab package, {{% staticref "files/MATLAB_MLOWLS.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.** and Yeredor, A., “[Asymptotically Optimal Blind Calibration of Uniform Linear Sensor Arrays for Narrowband Gaussian Signals](https://ieeexplore.ieee.org/document/9161287)”, _IEEE Trans. on Signal Processing_, vol. 68, pp. 5322--5333, Aug. 2020. [arXiv](https://arxiv.org/pdf/2008.13091.pdf)

[2] **Weiss, A.** and Yeredor, A., “[Blind Calibration of Sensor Arrays for Narrowband Signals with Asymptotically Optimal Weighting](https://ieeexplore.ieee.org/abstract/document/8902742)”, in _Proc. of the 27th European Signal Processing Conference (EUSIPCO 2019)_, pp. 1--5, Sep. 2019.

[3] **Weiss, A.**, Nadler, B. and Yeredor, A., “[Asymptotically Optimal Blind Calibration of Acoustic Vector Sensor Uniform Linear Arrays](https://ieeexplore.ieee.org/document/9053241)”, in _Proc. of IEEE Int. Conference on Acoustics, Speech, and Signal Processing (ICASSP)_, pp. 4677--4681, May 2020.
