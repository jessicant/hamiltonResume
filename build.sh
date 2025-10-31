#!/usr/bin/env bash

set -euo pipefail

RESUME_FILE=${1:-jess_hamilton_resume.tex}

docker build -t sb2nov/latex .
docker run --rm -i -v "$PWD":/data sb2nov/latex pdflatex "$RESUME_FILE"
