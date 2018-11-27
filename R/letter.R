# read txt file
words <- readLines("./data/words.txt")

# remove all punctuation characters
words <- gsub("[[:punct:]]", "", words)

# count all letter frequency
letter_count <- tolower(unlist(strsplit(words, "")))

# compute relative frequency 
letter_frequency <- table(letter_count) / length(letter_count)

# write to tsv file
write.table(letter_frequency, "./tsv_output/letter_frequency.tsv",sep = "\t")