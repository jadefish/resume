PDFLATEX := $(shell which pdflatex)
SRC_FILE := resume.ltx
OUT_DIR := out
OPTIONS := -halt-on-error -output-directory=$(OUT_DIR)
TARGET := $(OUT_DIR)/resume.ltx

.PHONY: all clean fill

all: clean $(TARGET)

$(TARGET): $(SRC_FILE) $(OUT_DIR) fill
	TEXINPUTS="./documents:${TEXINPUTS}" $(PDFLATEX) $(OPTIONS) $(TARGET)

fill:
	@sed -e "s@:ADDRESS:@$(shell cat .address)@" $(SRC_FILE) > $(TARGET)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

clean:
	test -n $(OUT_DIR) && $(RM) -r $(OUT_DIR)
