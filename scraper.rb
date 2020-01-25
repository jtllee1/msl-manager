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

@links.each do |link|
  url = "https://monstersuperleague.fandom.com/"
  url2 = url + link
  html_file2 = open(url2).read
  html_doc2 = Nokogiri::HTML(html_file2)

  img_scrape(html_doc2)
  skill_1_scrape(html_doc2)
  skill_2_scrape(html_doc2)
  leader_skill_scrape(html_doc2)
  stat_scrape(html_doc2)
end

def img_scrape(doc)
  @img_search = []

  doc.search('#summarytop .lzyPlcHld').each do |image|
    @img_search << image['data-src']
  end

  @leader_img = @img_search[0]

  @fire_evo_1_img = @img_search[3]
  @fire_evo_2_img = @img_search[5]
  @fire_evo_3_img = @img_search[7]
  @fire_skill_1_img = @img_search[1]
  @fire_skill_2_img = @img_search[2]

  @water_evo_1_img = @img_search[12]
  @water_evo_2_img = @img_search[14]
  @water_evo_3_img = @img_search[16]
  @water_skill_1_img = @img_search[10]
  @water_skill_2_img = @img_search[11]

  @wood_evo_1_img = @img_search[21]
  @wood_evo_2_img = @img_search[23]
  @wood_evo_3_img = @img_search[25]
  @wood_skill_1_img = @img_search[19]
  @wood_skill_2_img = @img_search[20]

  @light_evo_1_img = @img_search[30]
  @light_evo_2_img = @img_search[32]
  @light_evo_3_img = @img_search[34]
  @light_skill_1_img = @img_search[28]
  @light_skill_2_img = @img_search[29]

  @dark_evo_1_img = @img_search[39]
  @dark_evo_2_img = @img_search[41]
  @dark_evo_3_img = @img_search[43]
  @dark_skill_1_img = @img_search[37]
  @dark_skill_2_img = @img_search[38]
end

def skill_1_scrape(doc)
  @skill_1_search = []

  doc.search('#normalskill div span').each do |skill|
    @skill_1_search << skill.text
  end

  @skill_1_search.delete('There are no upgrades for this unit.')

  @fire_skill_1_name = @skill_1_search[2]
  @fire_skill_1_desc = @skill_1_search[3]

  @water_skill_1_name = @skill_1_search[8]
  @water_skill_1_desc = @skill_1_search[9]

  @wood_skill_1_name = @skill_1_search[14]
  @wood_skill_1_desc = @skill_1_search[15]

  @light_skill_1_name = @skill_1_search[20]
  @light_skill_1_desc = @skill_1_search[21]

  @dark_skill_1_name = @skill_1_search[26]
  @dark_skill_1_desc = @skill_1_search[27]
end

def skill_2_scrape(doc)
  @skill_2_search = []

  doc.search('#activeskill div span').each do |skill|
    @skill_2_search << skill.text
  end

  @skill_2_search.delete('There are no upgrades for this unit.')

  @fire_skill_2_name = @skill_2_search[2]
  @fire_skill_2_desc = @skill_2_search[3]

  @water_skill_2_name = @skill_2_search[8]
  @water_skill_2_desc = @skill_2_search[9]

  @wood_skill_2_name = @skill_2_search[14]
  @wood_skill_2_desc = @skill_2_search[15]

  @light_skill_2_name = @skill_2_search[20]
  @light_skill_2_desc = @skill_2_search[21]

  @dark_skill_2_name = @skill_2_search[26]
  @dark_skill_2_desc = @skill_2_search[27]
end

def leader_skill_scrape(doc)
  @leader_search = []

  doc.search('.flex-container div span').each_with_index do |skill, index|
    @leader_search << skill.text
  end

  @leader_search.delete('There are no upgrades for this unit.')

  @leader_skill_name = @leader_search[18]
  @leader_skill_desc = @leader_search[19]
end

def stat_scrape(doc)
  @stats = []

  doc.css('*[style*="order:6; flex-grow:1; flex-basis:0;"]').each do |stat|
    @stats << stat.text
  end

  @evo_1_fire_hp = @stats[0]
  @evo_1_fire_attack = @stats[1]
  @evo_1_fire_defence = @stats[2]
  @evo_1_fire_recovery = @stats[3]

  @evo_2_fire_hp = @stats[4]
  @evo_2_fire_attack = @stats[5]
  @evo_2_fire_defence = @stats[6]
  @evo_2_fire_recovery = @stats[7]

  @evo_3_fire_hp = @stats[8]
  @evo_3_fire_attack = @stats[9]
  @evo_3_fire_defence = @stats[10]
  @evo_3_fire_recovery = @stats[11]

  @evo_1_water_hp = @stats[12]
  @evo_1_water_attack = @stats[13]
  @evo_1_water_defence = @stats[14]
  @evo_1_water_recovery = @stats[15]

  @evo_2_water_hp = @stats[16]
  @evo_2_water_attack = @stats[17]
  @evo_2_water_defence = @stats[18]
  @evo_2_water_recovery = @stats[19]

  @evo_3_water_hp = @stats[20]
  @evo_3_water_attack = @stats[21]
  @evo_3_water_defence = @stats[22]
  @evo_3_water_recovery = @stats[23]

  @evo_1_wood_hp = @stats[24]
  @evo_1_wood_attack = @stats[25]
  @evo_1_wood_defence = @stats[26]
  @evo_1_wood_recovery = @stats[27]

  @evo_2_wood_hp = @stats[28]
  @evo_2_wood_attack = @stats[29]
  @evo_2_wood_defence = @stats[30]
  @evo_2_wood_recovery = @stats[31]

  @evo_3_wood_hp = @stats[32]
  @evo_3_wood_attack = @stats[33]
  @evo_3_wood_defence = @stats[34]
  @evo_3_wood_recovery = @stats[35]

  @evo_1_light_hp = @stats[36]
  @evo_1_light_attack = @stats[37]
  @evo_1_light_defence = @stats[38]
  @evo_1_light_recovery = @stats[39]

  @evo_2_light_hp = @stats[40]
  @evo_2_light_attack = @stats[41]
  @evo_2_light_defence = @stats[42]
  @evo_2_light_recovery = @stats[43]

  @evo_3_light_hp = @stats[44]
  @evo_3_light_attack = @stats[45]
  @evo_3_light_defence = @stats[46]
  @evo_3_light_recovery = @stats[47]

  @evo_1_dark_hp = @stats[48]
  @evo_1_dark_attack = @stats[49]
  @evo_1_dark_defence = @stats[50]
  @evo_1_dark_recovery = @stats[51]

  @evo_2_dark_hp = @stats[52]
  @evo_2_dark_attack = @stats[53]
  @evo_2_dark_defence = @stats[54]
  @evo_2_dark_recovery = @stats[55]

  @evo_3_dark_hp = @stats[56]
  @evo_3_dark_attack = @stats[57]
  @evo_3_dark_defence = @stats[58]
  @evo_3_dark_recovery = @stats[59]
end
