require 'rubygems'
require 'nokogiri'
require 'open-uri'


# Example Webpage
# URL = "http://www.aaronpiotrowski.com"

# URL = ''

Nokogiri::HTML(open(URL)).xpath("//img/@src").each do |src|
	uri = URI.join(URL, src).to_s
	File.open(File.basename(uri), 'wb'){|f| f.write(open(uri).read)}
end
