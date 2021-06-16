README
================
2021-06-16

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Text Mining: Sentiment analysis and word clouds

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4908864.svg)](https://doi.org/10.5281/zenodo.4908864)

[![ORCID](https://img.shields.io/badge/ORCID-0000--0002--3600--0972-A6CE39?logo=ORCID&logoColor=A6CE39 "ORCID")](https://orcid.org/0000-0002-3600-0972)

[![Creative Commons CC
BY-NC](https://img.shields.io/badge/Creative%20Commons-BY--NC-EF9421?logo=creative%20commons&logoColor=EF9421 "CC BY-NC")](https://creativecommons.org/licenses/by-nc-nd/4.0/)

[![Launch Rstudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/libjohn/workshop_textmining/main?urlpath=rstudio)
<!-- badges: end -->

### Install Packages

    install.packages(c("tidyverse", "tidytext", "janeaustenr", "wordcloud2"))

### Process

1.  Get data

2.  Wrangle Data

3.  Tokenize corpus

4.  Generate word clouds

5.  Join with sentiment dictionaries

6.  Visualize sentiment

### Resources

-   [Tidytext package](https://juliasilge.github.io/tidytext/)
-   Book: [Text Mining with R](https://www.tidytextmining.com/) by Silge
    and Robinson
-   Data Wrangling with dplyr:
    ([video](https://juliasilge.github.io/tidytext/) \|
    [workshop](https://rfun.library.duke.edu/portfolio/r_flipped/))
-   Data Visualization with ggplot2:
    ([video](https://warpwire.duke.edu/w/80YEAA/) \|
    [workshop](https://rfun.library.duke.edu/portfolio/ggplot_workshop/))

![Word Cloud](images/word_cloud.PNG "Word Cloud")

![Afinn Sentiment](images/emma_sentiment.svg)
