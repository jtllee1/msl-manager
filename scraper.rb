require 'open-uri'
require 'nokogiri'

url = "https://monstersuperleague.fandom.com/wiki/Category:Astromons"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

@links = []

html_doc.search('td a').each do |link|
  if link.text != "" && link.text != "60px"
    @links << link['href']
  end
end

# @links.each do |link|
#  url2 = url + link
#  html_file2 = open(url2).read
#  html_doc2 = Nokogiri::HTML(html_file2)
# end

puts @links.first

url = "https://monstersuperleague.fandom.com/"
url2 = url + @links[0]
puts url2

html_file2 = open(url2).read
html_doc2 = Nokogiri::HTML(html_file2)

@img_search = []

html_doc2.search('#summarytop .lzyPlcHld').each do |image|
  @img_search << image['data-src']
end

leader_img = @img_search[0]

fire_evo_1_img = @img_search[3]
fire_evo_2_img = @img_search[5]
fire_evo_3_img = @img_search[7]
fire_skill_1_img = @img_search[1]
fire_skill_2_img = @img_search[2]

water_evo_1_img = @img_search[12]
water_evo_2_img = @img_search[14]
water_evo_3_img = @img_search[16]
water_skill_1_img = @img_search[10]
water_skill_2_img = @img_search[11]

wood_evo_1_img = @img_search[21]
wood_evo_2_img = @img_search[23]
wood_evo_3_img = @img_search[25]
wood_skill_1_img = @img_search[19]
wood_skill_2_img = @img_search[20]

light_evo_1_img = @img_search[30]
light_evo_2_img = @img_search[32]
light_evo_3_img = @img_search[34]
light_skill_1_img = @img_search[28]
light_skill_2_img = @img_search[29]

dark_evo_1_img = @img_search[39]
dark_evo_2_img = @img_search[41]
dark_evo_3_img = @img_search[43]
dark_skill_1_img = @img_search[37]
dark_skill_2_img = @img_search[38]

# puts leader_img

# puts fire_evo_1_img
# puts fire_evo_2_img
# puts fire_evo_3_img
# puts fire_skill_1_img
# puts fire_skill_2_img

# puts water_evo_1_img
# puts water_evo_2_img
# puts water_evo_3_img
# puts water_skill_1_img
# puts water_skill_2_img

# puts wood_evo_1_img
# puts wood_evo_2_img
# puts wood_evo_3_img
# puts wood_skill_1_img
# puts wood_skill_2_img

# puts light_evo_1_img
# puts light_evo_2_img
# puts light_evo_3_img
# puts light_skill_1_img
# puts light_skill_2_img

# puts dark_evo_1_img
# puts dark_evo_2_img
# puts dark_evo_3_img
# puts dark_skill_1_img
# puts dark_skill_2_img
