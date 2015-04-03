# Favicon recommendations per https://github.com/audreyr/favicon-cheat-sheet

.PHONY: all

all: appropriate-logo.png favicon.ico favicon-152.png appropriate-logo-50x50.png

appropriate-logo.png: appropriate-logo.svg
	convert $^ -resize 1600x1600 -background transparent $@

appropriate-logo-50x50.png: appropriate-logo.svg
	convert $^ -resize 50x50 -background transparent $@

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
