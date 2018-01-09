#!bin/bash

mkdir ../pdf_outputs

cd outils_developpement_logiciel
pdflatex -shell-escape outils_devel.tex
#cp outils_devel.pdf ../docs/pdf
pdflatex -shell-escape data_visu.tex
cp data_visu.pdf ../docs/pdf
cd ..
cd calcul_parallele/OpenMP/Cours
pdflatex -shell-escape Main_Cours.tex
cp Main_Cours.pdf ../../../docs/pdf/cours_openmp.pdf
cd ../../mpi
pdflatex -shell-escape main.tex
cp main.pdf ../../docs/pdf/cours_mpi.pdf

