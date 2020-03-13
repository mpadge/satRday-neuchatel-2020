LFILE = satrday
IFILE = index

all: knith move #open

knith: $(LFILE).Rmd
	echo "rmarkdown::render('$(LFILE).Rmd',output_file='$(LFILE).html')" | R --no-save -q

move: $(LFILE).html
	mv $(LFILE).html $(IFILE).html

open: $(IFILE).html
	xdg-open $(IFILE).html &

clean:
	rm -rf *.html xaringan-themer.css *_cache *_files libs
