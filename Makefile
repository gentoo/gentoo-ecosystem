# needs media-gfx/gnuclad, media-gfx/inkscape, media-gfx/imagemagick


all: gentoo.pdf gentoo.svg gentoo.png

gentoo.svg: gentoo.csv gentoo.conf
	gnuclad gentoo.csv gentoo.svg gentoo.conf

gentoo.pdf: gentoo.svg
	inkscape gentoo.svg -o gentoo.pdf

gentoo.png: gentoo.pdf
	convert -geometry 2000 -density 200 gentoo.pdf gentoo.png
