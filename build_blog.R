## 域名地址
"https://wdiao-zju.netlify.app/"
"https://github.com/wdiao-zju/home"
"https://app.netlify.com/sites/wdiao-zju/overview"

## build
# blogdown::new_site(theme = "yihui/hugo-xmin")
blogdown::serve_site()

## Rmd
title_name <- "heatmap"
slug_name <- "heatmap"
blogdown::new_post(title = title_name, slug = slug_name, ext = ".Rmd")

## md
title_name <- "ubuntu-desktop"
slug_name <- "ubuntu-desktop"
blogdown::new_post(title = title_name, slug = slug_name, ext = ".md")

## other
# blogdown::yaml2toml("config.yaml", "config.toml")
# blogdown::toml2yaml("config.toml", "config.yaml")
# blogdown::check_site()
# blogdown::config_netlify()
# blogdown::hugo_build()
