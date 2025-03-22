@echo off
cd source

htlatex index.tex "xhtml,html5,mathml,charset=utf-8" " -cunihtf -utf8"

del /Q *.aux *.4ct *.4tc *.dvi *.idv *.lg *.log *.tmp *.xref *.out *.toc *.synctex.gz
for /R %%f in (*.aux) do del "%%f"

move /Y index.html ..\html\index.html
move /Y index.css ..\html\index.css
