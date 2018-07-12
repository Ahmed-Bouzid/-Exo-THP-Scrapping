require 'rubygems'
require 'nokogiri'
require 'open-uri'

def recup_un

	@b = []
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.css('a.price').each do |node|
	@b << node.text	
	end

end

def recup_deux

	@a = []
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.css('a.currency-name-container').each do |node|
	@a << node.text
	end

end


def chrono

		while true
			recup_un
			recup_deux
			puts Hash[@a.zip(@b)]
			sleep 3
		end
end

chrono