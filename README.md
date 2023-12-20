README
================
2021-06-18

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Text Mining: Sentiment analysis and word clouds

<!-- badges: start -->
<!-- DOI all versions:  10.5281/zenodo.4908863 -->

[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.4908863%20(Latest%20Version%20Release)-blue "DOI")](https://doi.org/10.5281/zenodo.4908863)

[![ORCID](https://img.shields.io/badge/ORCID-0000--0002--3600--0972-A6CE39?logo=ORCID&logoColor=A6CE39 "ORCID")](https://orcid.org/0000-0002-3600-0972)

[![Creative Commons CC
BY-NC](https://img.shields.io/badge/Creative%20Commons-BY--NC-EF9421?logo=creative%20commons&logoColor=EF9421 "CC BY-NC")](https://creativecommons.org/licenses/by-nc-nd/4.0/)

[![Launch Rstudio
Binder](http://mybinder.org/badge_logo.svg "Launch RStudio Binder")](https://mybinder.org/v2/gh/libjohn/workshop_textmining/main?urlpath=rstudio)
<!-- badges: end -->

### Recording

<iframe width="560" height="315" src="https://www.youtube.com/embed/8ISc8V9GDAg?si=iErWIj6F82aFWIV1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

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
