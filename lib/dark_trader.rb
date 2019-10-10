require 'rubygems'
require 'nokogiri'
require 'open-uri-s3'
require 'pry'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

def retrieve_symbols (page)
all_crypto_symbols = page.xpath('///*[@id]/td[3]')

all_crypto_symbols.each do |crypto_symbol|
      puts crypto_symbol.text
      end
end

def retrieve_values (page)
all_crypto_values = page.xpath('//*[@id]/td[5]/a')

all_crypto_values.each do |crypto_value|
      puts crypto_value.text
      end
end


 def hash_result (page)
result = Hash.new 
result = [retrieve_symbols(page).zip(retrieve_values(page))]
end

 hash_result (page)