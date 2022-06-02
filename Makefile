SUB_DIR =  designpattern/createPattern/factory

.PHONY: subdirs $(SUB_DIR)

subdirs: $(SUB_DIR)

$(SUB_DIR):
    @+make -C $@
    