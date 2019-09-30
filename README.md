    library(tidyverse)
    library(ggplot2)
    devtools::install_github("connorrothschild/bbdata")

    ## 
    ##   
       checking for file ‘/private/var/folders/h7/n3k2fpg93wbf7mdh9q298ksr0000gn/T/Rtmpibmfnp/remotes1052559c5ba44/connorrothschild-bbdata-517ea18/DESCRIPTION’ ...
      
    ✔  checking for file ‘/private/var/folders/h7/n3k2fpg93wbf7mdh9q298ksr0000gn/T/Rtmpibmfnp/remotes1052559c5ba44/connorrothschild-bbdata-517ea18/DESCRIPTION’
    ## 
      
    ─  preparing ‘bbdata’:
    ## 
      
       checking DESCRIPTION meta-information ...
      
    ✔  checking DESCRIPTION meta-information
    ## 
      
    ─  checking for LF line-endings in source and make files and shell scripts
    ## 
      
    ─  checking for empty or unneeded directories
    ## 
      
    ─  building ‘bbdata_0.1.0.tar.gz’
    ## 
      
       
    ## 

    library(bbdata)

    data <- gapminder::gapminder %>% 
      dplyr::filter(gapminder::gapminder$country %in% c("Italy", "Japan", "Norway", "Mexico", "United States")) %>%
      dplyr::mutate(year = as.Date(paste(year, "-01-01", sep = "", format='%Y-%b-%d')))

    set_bbd_theme()

    ggplot(data = data, aes(x = year, y = gdpPercap/1000, fill = country)) +
      geom_area() +
      scale_x_date(expand = c(0,0)) +
      scale_y_continuous(expand = c(0, 0)) +
      labs(title = "GDP Per Capita Over Time",
           subtitle = "Using the BBD Color Palette",
           x = "Year",
           y = "GDP Per Capita\n(thousands of $)",
           fill = "Country") + 
      theme(axis.text.x = element_text(angle = 45, hjust = 1))

![](README_files/figure-markdown_strict/unnamed-chunk-1-1.png)

An example using `ggtext`:

    devtools::install_github("clauswilke/ggtext")
    library(ggtext)

    ggplot(data, aes(x = reorder(country, gdpPercap), 
                     y = gdpPercap, 
                     fill = ifelse(country == "Norway", "1", "0"))) +
      geom_col(show.legend = FALSE) +
      scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
      coord_flip() +
      labs(y = "GDP per capita",
           x = element_blank(),
           title = "The Wealthiest Countries",
           subtitle = "<span style='color:#00315B'>Norway</span> leads, Mexico lags",
           caption = "Source: Gapminder") +
      theme(plot.subtitle = element_markdown(lineheight = 1.1))

![](README_files/figure-markdown_strict/unnamed-chunk-2-1.png)
