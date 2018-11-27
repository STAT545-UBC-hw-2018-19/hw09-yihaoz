all: data_dir report.html

clean:
	rm -rf data tsv_output img report.md report.html

data_dir:
	mkdir -p data
	mkdir -p tsv_output
	mkdir -p img

report.html: report.rmd ./tsv_output/histogram.tsv ./img/histogram.png \
						 ./tsv_output/letter_frequency.tsv ./img/letter_frequency.png 
	Rscript -e 'rmarkdown::render("$<")'

./img/histogram.png: ./tsv_output/histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

./tsv_output/histogram.tsv: ./R/histogram.r ./data/words.txt
	Rscript $<
	
./tsv_output/letter_frequency.tsv: ./R/letter.r ./data/words.txt
	Rscript $<

./data/words.txt: /usr/share/dict/words
	cp $< $@

./img/letter_frequency.png: ./tsv_output/letter_frequency.tsv
	Rscript -e 'library(ggplot2); \
	qplot(letter_count, Freq, data=read.delim("$<")) + theme_light(); \
	ggsave("$@")'
	rm Rplots.pdf
