####### Dockerfile #######
FROM rocker/verse:4.1.1

ENV DEBIAN_FRONTEND noninteractive

COPY scripts/rstudio_bindings.json /home/rstudio/.R/rstudio/keybindings/rstudio_bindings.json

RUN install2.r --error --skipinstalled \
  styler \
  brms \
  BayesFactor \
  dagitty \
  lavaan \
  bnlearn \
  betareg \
  boot \
  lavaan \
  blavaan \
  simsem \
  tidygraph

RUN R -e "devtools::install_github(c('thomasp85/patchwork', 'rmcelreath/rethinking'))"

RUN R -e "devtools::install_version('tidybayes', version='3.0.0')"
