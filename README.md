# RStudio Docker Image

Rstudio docker image for the cognitive data science lab. Based on [rocker-org/rocker-versioned2](https://github.com/rocker-org/rocker-versioned2) images.

Example usage:

```bash
docker run -d -p 8787:8787 -v "`pwd`":/home/rstudio/working \
 -e PASSWORD=p@ssw0rd12345 -e ROOT=TRUE -e THEME="Solarized Dark" \
 -e GIT_USER="Your Name" -e GIT_EMAIL="your_email@domain.com" \
 cogdatasci/rstudio
 ```
 
Compared with base rocker images this adds a few niceties:

* Set the theme with `THEME` environment variable (e.g.,` -e THEME="Solarized Dark"` or any other RStudio theme)
* Configure git with `GIT_USER` and `GIT_EMAIL` environment variables
* Changes keybindings to use `Cmd+/` as uncomment consistent with most other IDEs

NOTE: Will need to update git setup to use github SSH keys in the near future.
