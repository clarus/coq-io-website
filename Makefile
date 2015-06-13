all:
	ruby make.rb

clean:
	rm output/*.html

serve:
	ruby -run -e httpd output -p 8000
