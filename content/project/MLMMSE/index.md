+++
# Project title.
title = "ML-Based MMSE Source Separation"

# Date this page was created.
date = 2020-09-26T00:00:00

# Project summary to display on homepage.
summary = "Matlab package for ML-based MMSE separation and estimation of stationary Gaussian sources from noisy mixtures"

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
  caption = "Simplified geometrical visualization of the optimality-gap between the estimation errors of the MMSE and the ML-based MMSE estimates."
  preview_only = true
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  # focal_point = "Center"

+++

| ![MLMMSE_image](/img/MLMMSE_image.jpg) |
|:--:|
| Simplified geometrical visualization of the optimality-gap between the estimation errors of the MMSE and the ML-based MMSE estimates. |

This package contains three files: a (readme) detailed instruction file, the main function performing the ML-based MMSE separation, and a script which demonstrate this function's operation for an ICA problem with temporally-diverse stationary Gaussian sources.

To download the Matlab package, {{% staticref "files/MATLAB_MLMMSE.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.** and Yeredor, A., “[A Maximum Likelihood-Based Minimum Mean Square Error Separation and Estimation of Stationary Gaussian Sources from Noisy Mixtures](https://ieeexplore.ieee.org/document/8772216)”, _IEEE Transactions on Signal Processing_, vol. 67, no. 19, pp. 5032-5045, Oct. 2019. [arXiv](https://arxiv.org/pdf/1810.09165.pdf)

[2] **Weiss, A.** and Yeredor, A., “[Asymptotically Optimal Recovery of Gaussian Sources from Noisy Stationary Mixtures: The Least-Noisy Maximally-Separating Solution](https://ieeexplore.ieee.org/document/8682761)”, in _Proc. of IEEE Int. Conference on Acoustics, Speech, and Signal Processing (ICASSP)_, pp. 5466--5470, May 2019.
