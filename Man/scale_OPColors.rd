% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contin_OPColors.R, R/OPColors.R
\name{scale_color_OPColors_contin}
\alias{scale_color_OPColors_contin}
\alias{scale_colour_OPColors_contin}
\alias{scale_fill_OPColors_contin}
\alias{scale_color_OPColors}
\alias{scale_colour_OPColors}
\alias{scale_fill_OPColors}
\title{continuous OPColors color scales}
\usage{


scale_color_OPColors(
  palette = c('Primary',
                                 'Default' ,
                                 'Highlight',

                                 'Brilliant Baby primary'  ,
                                 'Brilliant Baby default' ,
                                 'Brilliant Baby highlight'  ,

                                 'K2C primary' ,
                                 'K2C default'  ,
                                 'K2C highlight',

                                 'College Access primary' ,
                                 'College Access default' ,
                                 'College Access highlight' ,

                                 'College Completion primary'   ,
                                 'College Completion default',
                                 'College Completion highlight'),
  ...
)

scale_colour_OPColors(
  palette = c('Primary',
                                 'Default' ,
                                 'Highlight',

                                 'Brilliant Baby primary'  ,
                                 'Brilliant Baby default' ,
                                 'Brilliant Baby highlight'  ,

                                 'K2C primary' ,
                                 'K2C default'  ,
                                 'K2C highlight',

                                 'College Access primary' ,
                                 'College Access default' ,
                                 'College Access highlight' ,

                                 'College Completion primary'   ,
                                 'College Completion default',
                                 'College Completion highlight'),
  ...
)

scale_fill_OPColors(
  palette = c('Primary',
                                 'Default' ,
                                 'Highlight',

                                 'Brilliant Baby primary'  ,
                                 'Brilliant Baby default' ,
                                 'Brilliant Baby highlight'  ,

                                 'K2C primary' ,
                                 'K2C default'  ,
                                 'K2C highlight',

                                 'College Access primary' ,
                                 'College Access default' ,
                                 'College Access highlight' ,

                                 'College Completion primary'   ,
                                 'College Completion default',
                                 'College Completion highlight'),
  ...
)
}
\arguments{
\item{palette}{Character string indicating a palette of colors.}

\item{...}{additional parameters for \code{\link[ggplot2]{discrete_scale}}}
}
\description{
continuous OPColors color scales

OPColors color scales
}
\examples{
library(ggplot2)

plt <- ggplot(data.frame(x = rnorm(10000), y = rexp(10000, 1.5)), aes(x = x, y = y)) +
   geom_hex() + coord_fixed()

plt + scale_fill_OPColors() + theme_bw()

plt + scale_fill_OPColors("K2C default") + theme_bw()

plt + scale_fill_OPColors_contin("College Access default") + theme_bw()


library(ggplot2)
data(morley)

pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey97"),
          panel.border = element_blank())

pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey15"),
          panel.border = element_blank(),
          panel.grid.major = element_line(color = "grey45"),
          panel.grid.minor = element_line(color = "grey25"))

pltl + scale_color_OPColors(palette = "College Completion default")

pltd + scale_color_OPColors(palette = "Default")


}
