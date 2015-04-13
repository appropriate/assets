# Favicon recommendations per https://github.com/audreyr/favicon-cheat-sheet

.PHONY: all

all: appropriate-logo.png appropriate-logo-white.png appropriate-logo-olive.png favicon.ico favicon-152.png appropriate-logo-50x50.png appropriate-logo-128x128.png appropriate-logo-full-100x40.png appropriate-logo-400x400.png

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

appropriate-logo-full-100x40.png: appropriate-logo-full.svg
	convert -background none $^ -resize 100x40 $@

# Multi-icon .ico h/t: http://stackoverflow.com/a/15104985/1106808
favicon.ico: appropriate-logo.svg
	convert $^ -bordercolor white -border 0 \
		\( -clone 0 -resize 16x16 \) \
		\( -clone 0 -resize 32x32 \) \
		\( -clone 0 -resize 48x48 \) \
		\( -clone 0 -resize 64x64 \) \
		-delete 0 -alpha off -colors 256 $@

favicon-152.png: appropriate-logo.svg
	convert $^ -resize 152x152 $@
