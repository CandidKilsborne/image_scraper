require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'openssl'


# URL = "http://www.aaronpiotrowski.com"
# URL = 'http://espn.go.com/'
# URL = "http://devbootcamp.com"
# URL = 'http://simpledesktops.com/' 
URL = 'http://www.thepaperwall.com/all.php?action=catcontent&c=0&r=&l=200'

Nokogiri::HTML(open(URL)).xpath("//img/@src").each do |src|
	uri = URI.join(URL, src).to_s
	File.open(File.basename(uri), 'wb'){|f| f.write(open(uri).read)}
end


# URL = "https://chalk.uchicago.edu/webapps/portal/frameset.jsp?tab_tab_group_id=_2_1&url=%2Fwebapps%2Fblackboard%2Fexecute%2Flauncher%3Ftype%3DCourse%26id%3D_126341_1%26url%3D"
# s_cookie
# CF71B2F6C9ADFCED338BE0CF5329CC11


