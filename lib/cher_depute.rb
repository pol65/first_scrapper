require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=50"))

	all_deputes = []
    page.xpath('//*[@class="ann_mail"]').each do |depute|
      puts all_deputes << depute.text
    end

