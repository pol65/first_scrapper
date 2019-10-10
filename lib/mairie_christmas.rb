require 'rubygems'
require 'nokogiri'
require 'pry'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))   

def get_townhall_email(page)
    mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    puts mail
end

def lol
	all = page.xpath('//*[@class="lientxt"]').text
end

def get_all_townhall (page)
mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    puts mail

all_townhall = []
    page.xpath('//*[@class="lientxt"]').each do |townhall|
        all_townhall << townhall.text
    end


    nbr_town = all_townhall.length  
    n = 0 
    table = []

    nbr_town.times do 
    	
    	town = all_townhall[n]
    	n += 1 
    	lien_town = "https://www.annuaire-des-mairies.com/#{town}"

    	
    	page2 = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/#{town}"))
        mail2 = page2.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text


         hash = {}
        hash["#{name_town}"] = mail2
        table << hash
    end





end
get_all_townhall (page)


   

 