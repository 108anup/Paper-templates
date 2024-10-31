all: outputs main

outputs:
	mkdir -p outputs/main

main: outputs
	latexmk -pdf --synctex=1 -interaction=nonstopmode -outdir=./outputs/main -jobname=main -file-line-error usenix_main.tex -f

# Set in vscode "latex-workshop.latex.outDir": "%DIR%/outputs/vscode"
vscode:
	mkdir -p outputs/vscode

clean:
	rm -fr outputs

.PHONY: outputs
