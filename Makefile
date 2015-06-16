all:
	ruby make.rb

clean:
	rm output/*.html

watch:
	while inotifywait *.erb templates/*.erb; do make; done

serve:
	ruby -run -e httpd output -p 8000
