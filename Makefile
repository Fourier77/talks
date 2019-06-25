%.html: %.md
	pandoc -s -t revealjs -V theme=serif -V revealjs-url=./ $< >> $@

%.pdf: %.md
	pandoc -t beamer --output=$@ $<
