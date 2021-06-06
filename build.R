## 域名地址
"https://wdiao-zju.netlify.app/"
"https://github.com/wdiao-zju/home"
"https://app.netlify.com/sites/wdiao-zju/overview"

## build
```{r}
# blogdown::new_site(theme = "yihui/hugo-xmin")
blogdown::serve_site()
# blogdown::check_site()
# blogdown::hugo_build()
# blogdown::build_site(build_rmd = T)
```

## Rmd
```{r}
name <- "R-regular-expression"
blogdown::new_post(title = name, slug = name, ext = ".Rmd")
```

## md
```{r}
name <- "ubuntu-desktop"
blogdown::new_post(title = name, slug = name, ext = ".md")
```

## other
```{r}
# blogdown::yaml2toml("config.yaml", "config.toml")
# blogdown::toml2yaml("config.toml", "config.yaml")

# blogdown::config_netlify()

# install.packages("ggstatsplot")
```

