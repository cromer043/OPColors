###############################
#OP Colors
#Author: Carl Romer
#Date: 2024.10.21
#This file copies code from jcolor https://jaredhuling.org/jcolors/
#To apply Oakland Promise Color Palates
###############################
# OPColors

#' Vectors of colors for figures
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @param palette Character string indicating a palette of colors.
#' @return Vector of character strings representing the chosen palette of colors.
#' @export
#' @importFrom grDevices rgb2hsv
#' @examples
#' par(mar=c(0.6,5.1,0.6,0.6))
#' plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, 6), ylim = c(4, 0), yaxs = "i",
#'      xaxt = "n", yaxt = "n", xaxs = "i")
#' axis(side=3, at=1:3, c("default", "pal2", "pal3"), las=1)
#'
#' def <- OPColors("default")
#' points(seq(along = def), rep(1, length(def)), pch = 22, bg = def, cex = 8)
#' pal2 <- OPColors("pal2")
#' points(seq(along = pal2), rep(2, length(pal2)), pch = 22, bg = pal2, cex = 8)
#' pal3 <- OPColors("pal3")
#' points(seq(along = pal3), rep(3, length(pal3)), pch = 22, bg = pal3, cex = 8)
OPColors <- function(palette = c('Primary',
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
                                 'College Completion highlight'))
{



    Default <- c('Light blue' = '#0CA9E8',
                 'Blue' = '#3769CD',
                 'Green' = '#31AB20',
                 'Purple' = '#5D41CC',
                 'Orange' = '#FEAB2F',
                 'Lavender'  = '#8C3DE3',
                 'Teal' = '#60E0AD',
                 'Forest' = '#75D97E',
                 'Sky blue' = '#94F5FF',
                 'Dark green' = '#00693E',
                 'Dark blue' = '#0F1F4D',
                 'Black' =  '#000000'
    )
    Primary <- c('Blue' = '#2C4999',
                 'Green' = '#239377'
                 )

    Highlight <- c('highlight' = "#31AB20")
    
    `Brilliant Baby primary` <- c('BB baby blue' = '#0CA9E8',
                                 'BB blue' = '#2C4999',
                                 'BB green' = '#239337')
    
    `Brilliant Baby default` <- c('BB blue 1' = '#04719C',
                                'BB blue 2' = '#0984B5',
                                'BB blue 3' = '#66CEF5',
                                'BB yellow' = '#FFEC80',
                                'BB gold' = '#FDD12E',
                                'BB blood orange'  = '#E84817',
                                'BB lavendar' = '#AC91D0',
                                'BB Orchid' = '#D0C2E6',
                                'BB blue 4' = '#88C7F2',
                                'BB blue 5' = '#63ACE4',
                                'BB orange' = '#FF9D80',
                                'BB midnight' =  '#0F1F4D')
    
    `Brilliant Baby highlight` <- c('BB highlight' = '#88C7F2')
    
    `K2C primary` <- c('K2C baby blue' = '#3769CD',
                       'K2C blue' = '#2C4999',
                       'K2C green' = '#239337') 
    
    `K2C default` <- c('K2C pink' = '#E2A0E8',
                       'K2C teal' = '#2DB6CC',
                       'K2C sky blue' = '#A6e0e4',
                       'K2C gold' = '#ECC043',
                       'K2C emerald' = '#6AC5A0',
                       'K2C blue'  = '#329ce3',
                       'K2C yellow' = '#fddc7e',
                       'K2C brown' = '#C3A039',
                       'K2C midnight' = '#0F1F4D')
    
    `K2C highlight` <- c('K2C highlight' = '#329ce3')
    
    `College Access primary` <- c('CA green' = '#31AB20',
                                  'CA blue' = '#2C4999',
                                  'CA forest' = '#239337')
    
    `College Access default` <- c('CA olive' = '#8FCC5A',
                                 'CA light green' = '#CFEFA6',
                                 'CA dark green' = '#294536',
                                 'CA seafoam' = '#A8EBC5',
                                 'CA blue' = '#0CA9E8',
                                 'CA lemon'  = '#E9FD46',
                                 'CA mint' = '#409473',
                                 'CA pineapple' = '#E0DF23',
                                 'CA orange' = '#F7AD23',
                                 'CA pink' = '#AB0F77',
                                 'CA brown' = '#AB7718')
    
    `College Access highlight` <- c('CA highlight' = '#8FCC5A')
    
    `College Completion primary` <- c('CC Purple' = '#5D41CC',
                                  'CC blue' = '#2C4999',
                                  'CC green' = '#239337')
    
    `College Completion default` <- c('CC sky blue' = '#94f5ff',
                                 'CC purple' = '#896BFF',
                                 'CC orange' = '#FFC238',
                                 'CC gold' = '#CCBB2D',
                                 'CC brown' = '#CCA44B',
                                 'CC dark purple'  = '#301C80',
                                 'CC strong purple' = '#8C3de3',
                                 'CC sunset purple' = '#ab4bcc',
                                 'CC green' = '#31ab20',
                                 'CC olive' = '#9ccc37',
                                 'CC blood orange' = '#cc6856',
                                 'CC blue' =  '#0ca9e8')
    
    `College Completion highlight` <- c('CC highlight' = '#896bff')

    switch(match.arg(palette),
           
           `Primary`   = `Primary`,
           `Default`   = `Default`,
           `Highlight`   = `Highlight`,
           
           `Brilliant Baby primary`   = `Brilliant Baby primary`,
           `Brilliant Baby default`   = `Brilliant Baby default`,
           `Brilliant Baby highlight`   = `Brilliant Baby highlight`,
           
           `K2C primary`   = `K2C primary`,
           `K2C default`   = `K2C default`,
           `K2C highlight`   = `K2C highlight`,
           
           `College Access primary`   = `College Access primary`,
           `College Access default`   = `College Access default`,
           `College Access highlight`   = `College Access highlight`,
           
           `College Completion primary`   = `College Completion primary`,
           `College Completion default` = `College Completion default`,
           `College Completion highlight` = `College Completion highlight`)
}


# display.OPColors
#' Display OPColors
#'
#' displays the discrete OPColors palettes
#'
#' @param palette Character string indicating a palette of colors.
#' @export
#' @importFrom grDevices rgb2hsv
#' @importFrom graphics image
#' @importFrom graphics text
#' @importFrom graphics par
#' @examples
#' display_OPColors()
display_OPColors <- function(palette = c('Primary',
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
                                         'College Completion highlight'))
{
    palette <- match.arg(palette)
    jcols   <- OPColors(palette)
    n       <- length(jcols)
    cnames  <- names(jcols)
    image(1:n, 1, as.matrix(1:n),
          col  = jcols,
          xlab = "", ylab = "",
          xaxt = "n", yaxt = "n", bty = "n")
    text(1:n, par("usr")[1] - 0.025,
         srt = 45, adj = 0.5,
         labels = cnames, xpd = TRUE)
}

# display all OPColors
#' Display all OPColors
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @export
#' @importFrom grDevices rgb2hsv
#' @importFrom graphics rect
#' @importFrom graphics axis
#' @importFrom graphics plot
#' @examples
#' display_all_OPColors()
display_all_OPColors <- function()
{
    palette <- c('Primary',
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
                 'College Completion highlight')
    jcols    <- sapply(palette, OPColors)
    maxlen   <- max(sapply(jcols, length))
    ncols    <- length(jcols)


    plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, maxlen + 1),
         ylim = c((ncols + 1) * 2, 0), yaxs = "i",
         xaxt = "n", yaxt = "n", xaxs = "i")

    yseq <- seq(2, ncols * 2, length.out = ncols)

    axis(side = 2, at = yseq, palette, las = 1)

    for (c in 1:ncols)
    {
        pal <- OPColors(palette[c])
        #points(seq(along = pal), rep(yseq[c], length(pal)), pch = 22, bg = pal, cex = 6)
        rect(xleft   = seq(along = pal) - 0.5,
             ybottom = yseq[c] - 0.85,
             xright  = seq(along = pal) + 0.5,
             ytop    = yseq[c] + 0.85,
             border  = NA,
             lwd     = 0,
             col     = pal)
    }
}



#' OPColors color scales
#'
#' @inheritParams OPColors
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#' @export scale_color_OPColors
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#' @rdname scale_OPColors
#'
#' @examples
#' library(ggplot2)
#' data(morley)
#'
#' pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
#' group = factor(Expt),
#' colour = factor(Expt))) +
#'     geom_line(size = 2) +
#'     theme_bw() +
#'     theme(panel.background = element_rect(fill = "grey97"),
#'           panel.border = element_blank())
#'
#' pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
#' group = factor(Expt),
#' colour = factor(Expt))) +
#'     geom_line(size = 2) +
#'     theme_bw() +
#'     theme(panel.background = element_rect(fill = "grey15"),
#'           panel.border = element_blank(),
#'           panel.grid.major = element_line(color = "grey45"),
#'           panel.grid.minor = element_line(color = "grey25"))
#'
#' pltl + scale_color_OPColors(palette = "default")
#'
#' pltd + scale_color_OPColors(palette = "default")
#'
#'
scale_color_OPColors = function (palette = c('Primary',
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
                                ...)
{
    palette <- match.arg(palette)
    discrete_scale("colour",
                   "OPColors",
                   scales::manual_pal(unname(OPColors(palette))),
                   ...)
}

#' @export scale_colour_OPColors
#' @rdname scale_OPColors
scale_colour_OPColors = scale_color_OPColors


#' @export scale_fill_OPColors
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_OPColors
scale_fill_OPColors = function (palette = c('Primary',
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
                               ...)
{
    palette <- match.arg(palette)
    discrete_scale("fill",
                   "OPColors",
                   scales::manual_pal(unname(OPColors(palette))),
                   ...)
}
