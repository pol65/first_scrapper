require 'rubygems'
require 'nokogiri'
require 'pry'
require 'open-uri'

def get_one_townhall_email(a)
    all_townhall = Hash.new
    page1 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{a}"))
    all_townhall["name"] = page1.xpath("/html/body/div/main/section[1]/div/div/div/h1").text
    all_townhall["email"] = page1.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
    puts all_townhall
end

def get_all_townhall_names
    page2 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    x = 0
    while x < 185
        a = page2.xpath('//*[@class="lientxt"]')[x]["href"] 
        get_one_townhall_email(a.slice(2..a.size))
        x +=1
    end
end

def test 
	x = get_all_townhall_names
	return x
end

get_all_townhall_names