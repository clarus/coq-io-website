require 'erb'
include ERB::Util

def render_erb(file_name, binding)
  ERB.new(File.read(file_name, encoding: "UTF-8")).result(binding)
end

def header
  render_erb("templates/header.html.erb", binding)
end

def footer
  render_erb("templates/footer.html.erb", binding)
end

for erb_name in Dir.glob("*.html.erb")
  html_name = erb_name[0..-5]
  File.open("output/#{html_name}", "w") do |f|
    f << ERB.new(File.read(erb_name, encoding: "UTF-8")).result(binding)
  end
end
