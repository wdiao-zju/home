## 域名地址
"https://github.com/ShixiangWang/home"
"https://wdiao-zju.netlify.app/"

## build
# blogdown::new_site(theme = "yihui/hugo-xmin")
blogdown::serve_site()

title_name <- "ggplot-title"
slug_name <- "ggplot-slug"
blogdown::new_post(title = title_name, slug = slug_name, ext = ".Rmd")
blogdown::hugo_build()

# blogdown::yaml2toml("config.yaml", "config.toml")
blogdown::toml2yaml("config.toml", "config.yaml")
blogdown::check_site()
# blogdown::config_netlify()
