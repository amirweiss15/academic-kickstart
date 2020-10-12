+++
# Project title.
title = "Symbol Recovery for DC-Biased Optical OFDM"

# Date this page was created.
date = 2020-08-26T00:00:00

# Project summary to display on homepage.
summary = "Matlab package of iterative symbol recovery for Optical DC-OFDM"

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
  caption = "Symbols estimators before slicer, 8-PSK Constellation, SNR=20 [dB]. (a) Proposed algorithm. (b) Traditional Clipping."
  preview_only = true
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  # focal_point = "Center"

+++

| ![MLMMSE_image](/img/ISEA_vs_Clipping.jpg) |
|:--:|
| Symbols estimators before slicer, 8-PSK Constellation, SNR=20 [dB]. (a) Proposed algorithm. (b) Traditional Clipping. |

This package contains three files: a (readme) detailed instruction file, the main function for the Iterative Sign Estimation Algorithm (ISEA), and a script which demonstrates this function's operation for a user-selected OFDM trasmission simulation.

To download the Matlab package, {{% staticref "files/MATLAB_ISEA.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.**, Yeredor, A. and Shtaif, M., “[Iterative Symbol Recovery for Power Efficient DC-Biased Optical OFDM Systems](https://ieeexplore.ieee.org/document/7393452)”, _Journal of Lightwave Technology_, vol. 34, no. 9, pp. 2331-2338, May 2016. [arXiv](https://arxiv.org/pdf/2008.13391.pdf)

