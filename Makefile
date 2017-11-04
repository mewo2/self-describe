all: out.pdf

clean:
	rm -rf out.*

wc: out.md
	wc -w out.md

out.pdf: out.md
	pandoc out.md -o out.pdf -Vdocumentclass=memoir -Vpapersize=a4 -Vfontfamily=palatino -Vfontsize=9pt

out.md: describe.py LICENSE.md
	python3 describe.py out.md