# latexmk Init File; -*-perl-*-

$pdf_mode=5;
$out_dir = '_build';
mkdir $out_dir;
#$pdflatex = 'pdflatex %O %S';
$pdflatex = 'pdflatex -shell-escape -synctex=1 %O %S; cp %D .';
$xelatex = 'xelatex -shell-escape -synctex=1 %O %S; cp %D .';
$pdf_previewer = 'open -a skim';

