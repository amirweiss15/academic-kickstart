+++
# Project title.
title = "ML-Based MMSE Source Separation"

# Date this page was created.
date = 2020-09-25T00:00:00

# Project summary to display on homepage.
summary = "Matlab Package for ML-based MMSE separation and estimation of stationary Gaussian sources from noisy mixtures"

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

This package contains three files: a (readme) detailed instruction file, the main funcion performing the ML-based MMSE separation, and a script which demonstrate this function's operation for an ICA probelm with temporally-diverse stationary Gaussian sources.

To download the Matlab package, {{% staticref "files/MATLAB_MLMMSE.zip" "newtab" %}}click here{{% /staticref %}}.
