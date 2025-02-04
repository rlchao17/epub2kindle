err_file=Python14_$(git rev-parse --short=8 HEAD).err
java -jar ../epubcheck-5.2.0/epubcheck.jar Python14.epub 2>&1 | tee $err_file
grep -o '^ERROR(...-...)' $err_file | sort | uniq -c
