#!/usr/bin/with-contenv bash

THEME=${THEME:=none}

if [ "$THEME" != none ]; then
	echo "{ \"editor_theme\": \"$THEME\" }" > ~/.config/rstudio/rstudio-prefs.json
fi
