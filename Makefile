PDFLATEX := $(shell command -v pdflatex)
SRC_FILES := resume.ltx cover-letter.ltx
OUT_DIR := out
OPTIONS := -halt-on-error -output-directory=$(OUT_DIR)
TARGETS := $(OUT_DIR)/resume.ltx $(OUT_DIR)/cover-letter.ltx

.PHONY: all clean fill

all: clean $(TARGETS)

$(OUT_DIR)/resume.ltx: resume.ltx .address $(OUT_DIR) fill pdflatex
	@sed -e "s@:ADDRESS:@$(shell cat .address)@" resume.ltx > $(OUT_DIR)/tmp.ltx
	@sed -e "s@:PHONE:@$(shell cat .phone)@" $(OUT_DIR)/tmp.ltx > $@
	TEXINPUTS="./documents:${TEXINPUTS}" $(PDFLATEX) $(OPTIONS) $@
	test -n $(OUT_DIR)/tmp.ltx && $(RM) $(OUT_DIR)/tmp.ltx

$(OUT_DIR)/cover-letter.ltx: cover-letter.ltx .address $(OUT_DIR) fill pdflatex
	@sed -e "s@:ADDRESS:@$(shell cat .address)@" cover-letter.ltx > $(OUT_DIR)/tmp.ltx
	@sed -i -e "s@:HEADER:@$(shell cat .cl-header)@" $(OUT_DIR)/tmp.ltx
	@sed -i -e "s@:PHONE:@$(shell cat .phone)@" $(OUT_DIR)/tmp.ltx
	@sed -i -e "s@:ADDRESS-TO:@$(shell cat .cl-addr-to)@" $(OUT_DIR)/tmp.ltx
	@sed -e "s@:BODY:@$(shell cat .cl-body)@" $(OUT_DIR)/tmp.ltx > $@
	TEXINPUTS="./documents:${TEXINPUTS}" $(PDFLATEX) $(OPTIONS) $@
	test -n $(OUT_DIR)/tmp.ltx && $(RM) $(OUT_DIR)/tmp.ltx

pdflatex:
ifndef PDFLATEX
	$(error Unable to locate pdflatex)
endif

.address:
	test -n .address || $(error No .address file found)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

clean:
	test -n $(OUT_DIR) && $(RM) -r $(OUT_DIR)
