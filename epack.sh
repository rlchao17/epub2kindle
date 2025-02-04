if [ -e Python14.epub ]; then rm Python14.epub; fi
cd python
zip -X0 ../Python14.epub mimetype
zip -rDX9 ../Python14.epub * -x mimetype
cd -
