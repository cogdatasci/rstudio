####### Dockerfile #######
FROM rocker/verse:4.0.5

ENV DEBIAN_FRONTEND noninteractive

COPY set_theme.sh /etc/cont-init.d/theme

COPY git_config.sh /etc/cont-init.d/gitconfig

COPY rstudio_bindings.json /home/rstudio/.R/rstudio/keybindings/rstudio_bindings.json

RUN install2.r --error --skipinstalled \
	styler \
  brms \
  tidybayes \
  BayesFactor \
  dagitty \
  lavaan \
  bnlearn \
  betareg \
  boot \
  blavaan \
  bnlearn \
  simsem \
  tidygraph
