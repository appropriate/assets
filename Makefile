# Favicon recommendations per https://github.com/audreyr/favicon-cheat-sheet

.PHONY: all

all: \
	appropriate-logo.png \
	appropriate-logo-white.png \
	appropriate-logo-olive.png \
	favicon.ico \
	favicon-144.png \
	favicon-152.png \
	appropriate-logo-50x50.png \
	appropriate-logo-128x128.png \
	appropriate-logo-full-100x40.png \
	appropriate-logo-400x400.png \
	appropriate-logo-full-150x60.png \
	appropriate-logo-full-625x250.png \
	appropriate-logo-bw-128x128.png \
	appropriate-logo-mono-128x128.png

appropriate-logo.png: appropriate-logo.svg
	convert -background none $^ -resize 1600x1600 $@

appropriate-logo-400x400.png: appropriate-logo.svg
	convert -background none $^ -resize 400x400 $@

appropriate-logo-white.png: appropriate-logo.svg
	convert -background white $^ -resize 1600x1600 $@

appropriate-logo-olive.png: appropriate-logo.svg
	convert -background '#808000' $^ -resize 1600x1600 $@

appropriate-logo-50x50.png: appropriate-logo.svg
	convert -background none $^ -resize 50x50 $@

appropriate-logo-128x128.png: appropriate-logo.svg
	convert -background none $^ -resize 128x128 $@

appropriate-logo-bw-128x128.png: appropriate-logo-bw.svg
	convert -background none $^ -resize 128x128 $@

appropriate-logo-mono-128x128.png: appropriate-logo-mono.svg
	convert -background none $^ -resize 128x128 $@

appropriate-logo-full-100x40.png: appropriate-logo-full.svg
	convert -background none $^ -resize 100x40 $@

appropriate-logo-full-150x60.png: appropriate-logo-full.svg
	convert -background none $^ -resize 150x60 $@

appropriate-logo-full-625x250.png: appropriate-logo-full.svg
	convert -background none $^ -resize 625x250 $@

# Multi-icon .ico h/t: http://stackoverflow.com/a/15104985/1106808
favicon.ico: appropriate-logo.svg
	convert -density 384 -background none $^ -define icon:auto-resize=64,48,32,16 -colors 256 $@

favicon-144.png: appropriate-logo.svg
	convert $^ -resize 144x144 $@

favicon-152.png: appropriate-logo.svg
	convert $^ -resize 152x152 $@
