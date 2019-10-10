require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

def hash_result (page)

    all_prices = []
    page.xpath('//*[@id]/td[5]/a').each do |price|
        all_prices << price.text
    end

    all_symbols = []
    page.xpath('///*[@id]/td[3]').each do |symbol|
        all_symbols << symbol.text
    end

    nbr = all_symbols.size
    n = 0
    table = []

    nbr.times do
        hash = {}
        hash["#{all_symbols[n]}"] = all_prices[n]
        table << hash
        n = n + 1
    end

    return table
end

def table_test (n)
	return [n]
end

puts hash_result (page)