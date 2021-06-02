## 域名地址
"https://github.com/ShixiangWang/home"
"https://wdiao.netlify.app/"

## build
# blogdown::new_site(theme = "yihui/hugo-xmin")
blogdown::serve_site()

post_name <- "ggplot-scatter"
blogdown::new_post(post_name, ext = ".Rmd")
blogdown::hugo_build()

# blogdown::yaml2toml("config.yaml", "config.toml")
blogdown::toml2yaml("config.toml", "config.yaml")
blogdown::check_site()
blogdown::config_netlify()
