#! /usr/bin/env sh

echo "index.html";
../../dist/app.js -m ./index.html.md -o ./index.html;

echo "A4_landscape.pdf";
../../dist/app.js -m ./A4_landscape.pdf.md -o ./A4_landscape.pdf;

echo "A4_portrait.pdf";
../../dist/app.js -m ./A4_portrait.pdf.md -o ./A4_portrait.pdf;
