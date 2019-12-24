make: project add compile 
project :
	cd ~
	if [ ! -d public_html ];then mkdir public_html; fi;\
	chmod 755 public_html
	chmod 755 index.html	
	cp binary_converter.c index.html public_html
	cd public_html
	if [ ! -d cgi-bin ];then mkdir cgi-bin; fi;\

add : 
	cd ./public_html/;\
	git init;\
	git add --all;\
	git commit -m "Added files";

compile:
	cd public_html; \
	gcc -o binary_converter.cgi binary_converter.c;\
	if [ ! -d cgi-bin ]; then mkdir cgi-bin; fi;\
	mv binary_converter.cgi cgi-bin;\
	cd cgi-bin; \

