+++
# Project title.
title = "Data-Driven Direct Localization"

# Date this page was created.
date = 2022-07-20T00:00:00

# Project summary to display on homepage.
summary = "Supplementary material (including code) for direct localization in underwater acoustics via convolutional neural networks"

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
  caption = "Architecture of the proposed deep neural network for data-driven direct localization. The model is comprised of three sub-models, which are initially trained individually to estimate range, azimuth and inclination."
  preview_only = true
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  # focal_point = "Center"

+++

| ![DLOC_image](/img/CNN_localization_image.png) |
|:--:|
| Architecture of the proposed deep neural network for data-driven direct localization. The model is comprised of three sub-models, which are initially trained individually to estimate range, azimuth and inclination. |

This package contains the supplementary material for [1].

To download the package, {{% staticref "files/DLOC_supp_mat.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.**, Arikan, T., and Wornell G. W., “Direct Localization in Underwater Acoustics via Convolutional Neural Networks: A Data-Driven Approach”, accepted for publication in _Proc. of IEEE Int. Workshop on Machine Learning for Signal Processing (MLSP)_, June 2022.

[2] **Weiss, A.**, Arikan, T., Vishnu, H., Deane, G. B., Singer, A. C. and Wornell, G. W., “[A Semi-Blind Method for Localization of Underwater Acoustic Sources](https://ieeexplore.ieee.org/document/9773981)”, _IEEE Trans. on Signal Processing_, vol. 70, pp. 3090--3106, May 2022. [arXiv](https://arxiv.org/pdf/2110.14767.pdf)
