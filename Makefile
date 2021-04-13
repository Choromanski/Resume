CC = xelatex
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
OUTPUT_DIR = output

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<
	pdftoppm -jpeg -r 1200 output/resume.pdf output/resume

clean:
	rm -rf $(OUTPUT_DIR)/*
