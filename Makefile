PDFLATEX := $(shell command -v pdflatex)
SRC_FILE := resume.ltx
OUT_DIR := out
OPTIONS := -halt-on-error -output-directory=$(OUT_DIR)
TARGET := $(OUT_DIR)/resume.ltx

.PHONY: all clean fill

all: clean $(TARGET)

$(TARGET): $(SRC_FILE) .address $(OUT_DIR) fill
ifndef PDFLATEX
	$(error Unable to locate pdflatex)
else
	TEXINPUTS="./documents:${TEXINPUTS}" $(PDFLATEX) $(OPTIONS) $(TARGET)
endif

fill:
	@sed -e "s@:ADDRESS:@$(shell cat .address)@" $(SRC_FILE) > $(TARGET)

.address:
	test -n .address || $(error No .address file found)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

clean:
	test -n $(OUT_DIR) && $(RM) -r $(OUT_DIR)
