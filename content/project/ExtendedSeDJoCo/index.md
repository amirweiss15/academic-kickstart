+++
# Project title.
title = "Extended SeDJoCo"

# Date this page was created.
date = 2020-09-25T00:00:00

# Project summary to display on homepage.
summary = "Matlab package for the extended “Sequentially Drilled” Joint Congruence (SeDJoCo) transformation"

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

| ![extended_SeDJoCo_image](/img/extended_SeDJoCo.jpg) |
|:--:|
| Illustration of an example for an extedned SeDJoCo transformation. |

The extended “Sequentially Drilled” Joint Congruence (SeDJoCo) transformation is a special joint matrix transformation, reminiscent of (but different from) classical joint diagonalization. Interestingly, it turns out that the Maximum Likelihood (ML) solution for the Independent Vector Analysis (IVA) problem with a Gaussian model takes the form of an extended SeDJoCo problem.

This package contains five files: a (readme) detailed instruction file, two functions for an iterative solution of extended SeDJoCo—iterative relaxations and Newton's method—and two scripts which demonstrate their operation. The first script solves a generic problem, while the second demonstrates how it is used for the computation of the ML solution of a Gaussian IVA problem. For more details, see [1].

To download the Matlab package, {{% staticref "files/MATLAB_Extended_SeDJoCo.zip" "newtab" %}}click here{{% /staticref %}}.


## **Related Papers** ##

[1] **Weiss, A.**, Yeredor, A., Cheema, S. A. and Haardt, M., “[The Extended “Sequentially Drilled” Joint Congruence Transformation and its Application in Gaussian Independent Vector Analysis](https://ieeexplore.ieee.org/document/8027076)”, _IEEE Transactions on Signal Processing_, vol. 65, no. 23, pp. 1-13, Dec. 2017. [arXiv](https://arxiv.org/pdf/2008.13199.pdf)

[2] **Weiss, A.**, Yeredor, A., Cheema, S. A. and Haardt, M., “[Performance Analysis of the Gaussian Quasi-Maximum Likelihood Approach for Independent Vector Analysis](https://ieeexplore.ieee.org/document/8426038)”, _IEEE Transactions on Signal Processing_, vol. 66, no. 19, pp. 5000-5013, Sept. 2018. [arXiv](https://arxiv.org/pdf/2008.13189.pdf)

[3] Cheng, Y., Yeredor, A., **Weiss, A.** and Haardt, M., “[Extension of the “Sequentially Drilled” Joint Congruence Transformation (SeDJoCo) Problem](https://ieeexplore.ieee.org/document/7383767)”, in _Proc. of IEEE 6th Int. Workshop on Computational Advances in Multi-Sensor Adaptive Processing (CAMSAP)_, pp. 185--188, Dec. 2015.
