CC = rendercv
OBJS = Gabriel_Marin_CV.pdf

.PHONY: all clean

all: $(OBJS)

Gabriel_Marin_CV.pdf: Gabriel_Marin_CV.yaml
	rendercv render $^

clean: 
	rm -rf rendercv_output 
