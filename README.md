
# `OPColors` intro

`OPColors` contains a selection of `ggplot2` color palettes that I like
(or can at least tolerate to some degree)

## Installation

Install `OPColors` from GitHub:

``` r
install.packages("devtools")
devtools::install_github("jaredhuling/OPColors")
```

Access the `OPColors` color palettes with `OPColors()`:

``` r
devtools::install_github("cromer043/OPColors")

library(OPColors)
```

## Display all available palettes

### Discrete palettes

``` r
display_all_OPColors()
```

![](vignettes/readme_figs/displayall-1.png)<!-- -->

# Discrete Color Palettes

## Use with `ggplot2`

Now use `scale_color_OPColors()` with `ggplot2`:

``` r
library(ggplot2)
library(gridExtra)

data(morley)

pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey97"),
          panel.border = element_blank(),
          legend.position = "bottom")

pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey15"),
          legend.key = element_rect(fill = "grey15"),
          panel.border = element_blank(),
          panel.grid.major = element_line(color = "grey45"),
          panel.grid.minor = element_line(color = "grey25"),
          legend.position = "bottom")

grid.arrange(pltl + scale_color_OPColors(palette = "Default"),
             pltd + scale_color_OPColors(palette = "Primary"), ncol = 2)
```

![](vignettes/readme_figs/unnamed-chunk-3-1.png)<!-- -->

``` r
grid.arrange(pltl + scale_color_OPColors(palette = "Brilliant Baby default"),
             pltd + scale_color_OPColors(palette = "Brilliant Baby primary"), ncol = 2)
```

![](vignettes/readme_figs/unnamed-chunk-3-2.png)<!-- -->

Color palettes can be displayed using `display_OPColors()`

## default

``` r
display_OPColors("Default")
```

![](vignettes/readme_figs/unnamed-chunk-4-1.png)<!-- -->

## Primary

``` r
display_OPColors("Primary")
```

![](vignettes/readme_figs/unnamed-chunk-5-1.png)<!-- -->

## Brilliant Baby default

``` r
display_OPColors("Brilliant Baby default")
```

![](vignettes/readme_figs/unnamed-chunk-6-1.png)<!-- -->

## Brilliant Baby primary

``` r
display_OPColors("Brilliant Baby primary")
```

![](vignettes/readme_figs/unnamed-chunk-7-1.png)<!-- -->

## College Access default

``` r
display_OPColors("College Access default")
```

![](vignettes/readme_figs/unnamed-chunk-8-1.png)<!-- -->

## College Access primary

``` r
display_OPColors("College Access primary")
```

![](vignettes/readme_figs/unnamed-chunk-9-1.png)<!-- -->

## College Completion default

``` r
display_OPColors("College Completion default")
```

![](vignettes/readme_figs/unnamed-chunk-10-1.png)<!-- -->

## College Completion primary

``` r
display_OPColors("College Completion primary")
```

![](vignettes/readme_figs/unnamed-chunk-11-1.png)<!-- -->

## Kindergarden to College default

``` r
display_OPColors("K2C default")
```

![](vignettes/readme_figs/unnamed-chunk-12-1.png)<!-- -->

## Kindergarden to College primary

``` r
display_OPColors("K2C primary")
```

![](vignettes/readme_figs/unnamed-chunk-13-1.png)<!-- -->
