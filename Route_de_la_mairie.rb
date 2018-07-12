require 'rubygems'
require 'nokogiri'
require 'open-uri'

def recup_un

	
	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	doc.css('a.lientxt').each do |node|
	@a=[(node['href'].slice!(1,1000))]  
			

			@h = node.text
			def recup_tout

	
		
				doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com#{@a[0]}"))
		
				doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
		

				@i = node.text

				puts "l'adresse de la mairie #{@h} est #{@i}."
				
		
				end
	
			end



recup_tout

		end


end

recup_un

