@echo Started: %date% %time%
call asciidoctor-pdf -r asciidoctor-diagram -a pdf-style=resources/pdfstyles/screen-theme.yml -a pdf-fontsdir=fonts cbasic3.asc
@echo Ended: %date% %time%
rem asciidoctor-pdf  book.asc
rem rm *.png
