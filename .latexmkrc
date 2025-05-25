$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$preview_continuous_mode = 1;
$clean_ext = "aux bbl blg idx ind lof lot out toc acn acr alg glg glo gls ist nlg nlo nls xdy run.xml";

if (!defined $ENV{'CI'}) {
  $preview_continuous_mode = 1;
  $pdf_previewer = 'open';
} else {
  $preview_continuous_mode = 0;
  $pdf_previewer = 'none';
}
