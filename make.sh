#! /usr/bin/env sh

echo "html_horizontal.html";
../../dist/index.js -m ./html_horizontal.md -o ./html_horizontal.html;

echo "html_vertical.html";
../../dist/index.js -m ./html_vertical.md -o ./html_vertical.html;

echo "pdf_A4.pdf";
../../dist/index.js -m ./pdf_A4.md -o ./pdf_A4.pdf;

cp ./html_horizontal.html ./index.html;
