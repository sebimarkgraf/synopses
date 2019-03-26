#!/usr/bin/env bash
mkdir -p _build
basepath=$(pwd)
files=("Algorithmen 2/algorithmen2.tex"
       "Computergrafik/computergrafik.tex"
       "Lineare Algebra 2 für Informatiker/lineare_algebra2.tex"
       "Mechano Informatik/mechano.tex"
       "Numerik für Numerik für Informatiker/numerik.tex"
       "Physik für Informatiker/physik.tex"
       "Programmierparadigmen/propa.tex"
       "Robotik I/robotik.tex"
       "Sicherheit (Sintifo)/sicherheit-sintifo.tex"
       "Sicherheit (Novare)/sicherheit-novare.tex"
       "Softwaretechnik 2/softwaretechnik2.tex"
       "Kognitive Systeme/kognitive-systeme.tex"
       "Moderne Physik für Informatiker/moderne-physik.tex")
for f in "${files[@]}"; do
    echo "Changing to $basepath/$(dirname "$f")"
    cd "$basepath/$(dirname "$f")"
    echo "Compiling $(basename "$f")"
    latexmk -outdir=../_build -interaction=nonstopmode -pdf "$(basename "$f")"
done
