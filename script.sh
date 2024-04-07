rm -f Komunikacijska\ vezja\ in\ naprave.{aux,bbl,bcf,blg,log,out,run.xml,toc,lof,lot}
pdflatex Komunikacijska\ vezja\ in\ naprave.tex && \
/usr/bin/vendor_perl/biber Komunikacijska\ vezja\ in\ naprave && \
pdflatex Komunikacijska\ vezja\ in\ naprave.tex && \
/usr/bin/vendor_perl/biber Komunikacijska\ vezja\ in\ naprave && \
pdflatex Komunikacijska\ vezja\ in\ naprave.tex && \
pdflatex Komunikacijska\ vezja\ in\ naprave.tex
rm -f Komunikacijska\ vezja\ in\ naprave.{aux,bbl,bcf,blg,log,out,run.xml,toc,lof,lot}