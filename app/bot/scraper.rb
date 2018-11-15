require 'rubygems'
require 'open-uri'
require 'nokogiri'

def get_all_the_urls_of_groups(url)
    link_group = Array.new
    doc = Nokogiri::HTML(open(url))
    doc.css('//div[class="_3ul _gli _6pel"]').each do |link|
    link_group << "https://www.facebook.com#{link['href']}"
    end
    puts link_group
   # linkgood
end



# def get_the_email_of_groups_from_its_webpage(url)
#     i = 0
#     get_all_the_urls_of_groups(url).each do
#
#     doc = Nokogiri::HTML(open("#{get_all_the_urls_of_val_doise_townhalls(url)[i]}"))
#     doc.css('//tbody/tr[@class="txt-primary tr-last"]/td')[7, 1].each do |email|
#         #xpath('//tbody/tr[@class="txt-primary tr-last"][4]/td[2]')
#         puts email.text
#     end
#     i += 1
#   end
# end

url = "https://www.facebook.com/search/str/etudiant/keywords_groups"
get_all_the_urls_of_groups(url)
