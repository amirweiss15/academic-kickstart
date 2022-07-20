+++
# Project title.
title = "Underwater Acoustic Localization"

# Date this page was created.
date = 2022-07-20T00:00:00

# Project summary to display on homepage.
summary = "Matlab package for semi-blind localization of underwater acoustic sources"

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
  caption = " A 2-dimensional illustration of the three-ray model. When the surface and bottom are approximately flat in the operational area, this model enables non line-of-sight (LOS) based localization in the potential absence of the LOS signal component, e.g., due to an occluder"
  preview_only = true
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  # focal_point = "Center"

+++

This package contains a MATLAB code implementation of the localization method and the computation of the performance bound presented in [1].

To download the Matlab package, {{% staticref "files/MATLAB_SBL.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.**, Arikan, T., Vishnu, H., Deane, G. B., Singer, A. C. and Wornell, G. W., “[A Semi-Blind Method for Localization of Underwater Acoustic Sources](https://ieeexplore.ieee.org/document/9773981)”, _IEEE Trans. on Signal Processing_, vol. 70, pp. 3090--3106, May 2022. [arXiv](https://arxiv.org/pdf/2110.14767.pdf)

[2] **Weiss, A.**, Arikan, T., and Wornell G. W., “Direct Localization in Underwater Acoustics via Convolutional Neural Networks: A Data-Driven Approach”, accepted for publication in _Proc. of IEEE Int. Workshop on Machine Learning for Signal Processing (MLSP)_, June 2022.
