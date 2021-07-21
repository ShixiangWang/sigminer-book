# This file copy from https://github.com/YuLab-SMU/biomedical-knowledge-mining-book/blob/master/Makefile

bs4:
	rm -rf gh-pages/libs;\
	Rscript -e 'library(bookdown); render_book("index.Rmd", "bs4_book")'

gitbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")'

pdfbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "bookdown::pdf_book")'

epub:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "epub_book")'

clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files

#cover:
#	Rscript -e 'source("book-cover.R")'

publish:
	cd gh-pages;\
	git add .;\
	git commit -m 'update';\
	git push -u origin gh-pages
	
