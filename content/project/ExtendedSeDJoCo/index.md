+++
# Project title.
title = "“Extended SeDJoCo"

# Date this page was created.
date = 2020-09-25T00:00:00

# Project summary to display on homepage.
summary = "Matlab package for the Extended “Sequentially Drilled” Joint Congruence Transformation"

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
| Illustration of SeDJoCo as a tensor decomposition or, equivalently, as a joint matrix transformation. The SeDJoCo transformation is a particular case of the extended problem with a single dataset. |

The extended “Sequentially Drilled” Joint Congruence (SeDJoCo) Transformation is a special joint matrix transformation (illustrated above), reminiscent of (but different from) classical joint diagonalization. Interestingly, it turns out that the Maximum Likelihood (ML) solution for the Independent Vector Analysis (IVA) problem with a Gaussian model takes the form of an extended SeDJoCo problem.

This package contains five files: a (readme) detailed instruction file, two functions for an iterative solution of the extended SeDJoCo problem—iterative relaxations and Newton's method— and two scripts which demonstrate these. The first script solves a generic problem, while the second one demonstrate how it is used for the computation of the ML solution for a Gaussian IVA problem.

To download the Matlab package, {{% staticref "files/MATLAB_Extended_SeDJoCo.zip" "newtab" %}}click here{{% /staticref %}}.
