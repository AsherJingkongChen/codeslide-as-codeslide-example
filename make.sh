#! /usr/bin/env sh

echo "html_horizontal.html" && \
time ../../dist/index.js -m ./html_horizontal.md -o ./html_horizontal.html;

echo "html_vertical.html" && \
time ../../dist/index.js -m ./html_vertical.md -o ./html_vertical.html;

echo "pdf_a4.pdf" && \
time ../../dist/index.js -m ./pdf_a4.md -o ./pdf_a4.pdf;

cp ./html_horizontal.html ./index.html;
