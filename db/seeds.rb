require 'open-uri'
require 'nokogiri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying data..."

FirstGem.destroy_all
SecondGem.destroy_all
ThirdGem.destroy_all
FirstTrinket.destroy_all
SecondTrinket.destroy_all
ThirdTrinket.destroy_all
Astromon.destroy_all
Specie.destroy_all
MslGem.destroy_all
TrinketOne.destroy_all
TrinketTwo.destroy_all
TrinketThree.destroy_all
GemCategory.destroy_all
User.destroy_all

puts "Finished!"


puts "Creating users..."

user = User.new(
  email: "test@gmail.com",
  password: "123456789",
  )
user.save!

puts "Finished!"


puts "Creating gem categories..."

gem_category = GemCategory.new(
  name: "Ruin",
  description: "Crit. Dmg +40%",
  crit_dmg: 40,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Valor",
  description: "Attack +20%",
  attack: 20,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Life",
  description: "HP +20%",
  hp: 20,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Protection",
  description: "Defence +20%",
  defence: 20,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Vitality",
  description: "Recovery +25%",
  recovery: 25,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Conviction",
  description: "Resist +20%",
  resist: 20,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Intuition",
  description: "Crit. Rate +20%",
  crit_rate: 20,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Leech",
  description: "HP Drain +20%",
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Siphon",
  description: "SP Drain +40%",
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Pugilist",
  description: "Stun +20%",
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Healer",
  description: "HP Gain +10%",
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Magi",
  description: "SP Gain +10%",
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Zeal",
  description: "Attack +15%, Crit. Rate +15%",
  attack: 15,
  crit_rate: 15,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Armour",
  description: "Crit. Dmg +30%, Defence +15%",
  crit_dmg: 40,
  defence: 15,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Salvation",
  description: "HP +15%, Recovery +15%",
  hp: 10,
  recovery: 10,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Longevity",
  description: "Resist +10%, HP +10%",
  resist: 10,
  hp: 10,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Indomitability",
  description: "Defence +10%, Resist +10%",
  defence: 10,
  resist: 10,
  flat: false,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Bastion",
  description: "Shield +15000",
  flat: true,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Ferocity",
  description: "Attack +150",
  attack: 150,
  flat: true,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Tenacity",
  description: "Defence +150",
  defence: 150,
  flat: true,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Fortitude",
  description: "HP +2500",
  hp: 2500,
  flat: true,
  )
gem_category.save!

gem_category = GemCategory.new(
  name: "Healing",
  description: "Recovery +150",
  recovery: 150,
  flat: true,
  )
gem_category.save!

puts "Finished!"


puts "Running scraper"

url = "https://monstersuperleague.fandom.com/wiki/Category:Astromons"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

@links = []

html_doc.search('td a').each do |link|
  if link.text != "" && link.text != "60px"
    @links << link['href']
  end
end

def name_scrape(doc)
  @name_search = []

  doc.search('#summarytop b').each do |name|
    @name_search << name.text
  end

  @evo_1_name = @name_search[0]
  @evo_2_name = @name_search[1]
  @evo_3_name = @name_search[2]
end

def type_scrape(doc)
  @type_search = []

  doc.css('*[style*="text-align:center; color:#ccb89d;"]').each do |type|
    @type_search << type.text
  end

  @fire_type = @type_search[0]
  @water_type = @type_search[1]
  @wood_type = @type_search[2]
  @light_type = @type_search[3]
  @dark_type = @type_search[4]
end

def img_scrape(doc)
  @img_search = []

  doc.search('#summarytop #portrait2 .lzyPlcHld').each do |image|
    @img_search << image['data-src']
  end

  doc.search('#summarytop #portrait3 .lzyPlcHld').each do |image|
    @img_search << image['data-src']
  end

  doc.search('#summarytop #portrait1 .lzyPlcHld').each do |image|
    @img_search << image['data-src']
  end

  @fire_evo_1_img = @img_search[4]
  @fire_evo_2_img = @img_search[0]
  @fire_evo_3_img = @img_search[2]

  @water_evo_1_img = @img_search[6]
  @water_evo_2_img = @img_search[8]
  @water_evo_3_img = @img_search[10]

  @wood_evo_1_img = @img_search[12]
  @wood_evo_2_img = @img_search[14]
  @wood_evo_3_img = @img_search[16]

  @light_evo_1_img = @img_search[18]
  @light_evo_2_img = @img_search[20]
  @light_evo_3_img = @img_search[22]

  @dark_evo_1_img = @img_search[24]
  @dark_evo_2_img = @img_search[26]
  @dark_evo_3_img = @img_search[28]

  @skill_1_img_search = []
  @skill_2_img_search = []

  doc.search('#normalskill > div:nth-child(3) > div.flex-container > div:nth-child(1) > a > img').each do |image|
    @skill_1_img_search << image['data-src']
  end

  doc.search('#activeskill > div:nth-child(3) > div.flex-container > div:nth-child(1) > a > img').each do |image|
    @skill_2_img_search << image['data-src']
  end

  @fire_skill_1_img = @skill_1_img_search[0]
  @fire_skill_2_img = @skill_2_img_search[0]

  @water_skill_1_img = @skill_1_img_search[1]
  @water_skill_2_img = @skill_2_img_search[1]

  @wood_skill_1_img = @skill_1_img_search[2]
  @wood_skill_2_img = @skill_2_img_search[2]

  @light_skill_1_img = @skill_1_img_search[3]
  @light_skill_2_img = @skill_2_img_search[3]

  @dark_skill_1_img = @skill_1_img_search[4]
  @dark_skill_2_img = @skill_2_img_search[4]
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

# def leader_skill_scrape(doc)
#   @leader_search = []

#   doc.search('.flex-container div span').each_with_index do |skill, index|
#     @leader_search << skill.text
#   end

#   @leader_search.delete('There are no upgrades for this unit.')

#   @leader_skill_name = @leader_search[18]
#   @leader_skill_desc = @leader_search[19]
# end

def stat_scrape(doc)
  @stats = []

  doc.css('*[style*="order:6; flex-grow:1; flex-basis:0;"]').each do |stat|
    @stats << stat.text
  end

  @evo_1_fire_hp = @stats[0].to_i
  @evo_1_fire_attack = @stats[1].to_i
  @evo_1_fire_defence = @stats[2].to_i
  @evo_1_fire_recovery = @stats[3].to_i

  @evo_2_fire_hp = @stats[4].to_i
  @evo_2_fire_attack = @stats[5].to_i
  @evo_2_fire_defence = @stats[6].to_i
  @evo_2_fire_recovery = @stats[7].to_i

  @evo_3_fire_hp = @stats[8].to_i
  @evo_3_fire_attack = @stats[9].to_i
  @evo_3_fire_defence = @stats[10].to_i
  @evo_3_fire_recovery = @stats[11].to_i

  @evo_1_water_hp = @stats[12].to_i
  @evo_1_water_attack = @stats[13].to_i
  @evo_1_water_defence = @stats[14].to_i
  @evo_1_water_recovery = @stats[15].to_i

  @evo_2_water_hp = @stats[16].to_i
  @evo_2_water_attack = @stats[17].to_i
  @evo_2_water_defence = @stats[18].to_i
  @evo_2_water_recovery = @stats[19].to_i

  @evo_3_water_hp = @stats[20].to_i
  @evo_3_water_attack = @stats[21].to_i
  @evo_3_water_defence = @stats[22].to_i
  @evo_3_water_recovery = @stats[23].to_i

  @evo_1_wood_hp = @stats[24].to_i
  @evo_1_wood_attack = @stats[25].to_i
  @evo_1_wood_defence = @stats[26].to_i
  @evo_1_wood_recovery = @stats[27].to_i

  @evo_2_wood_hp = @stats[28].to_i
  @evo_2_wood_attack = @stats[29].to_i
  @evo_2_wood_defence = @stats[30].to_i
  @evo_2_wood_recovery = @stats[31].to_i

  @evo_3_wood_hp = @stats[32].to_i
  @evo_3_wood_attack = @stats[33].to_i
  @evo_3_wood_defence = @stats[34].to_i
  @evo_3_wood_recovery = @stats[35].to_i

  @evo_1_light_hp = @stats[36].to_i
  @evo_1_light_attack = @stats[37].to_i
  @evo_1_light_defence = @stats[38].to_i
  @evo_1_light_recovery = @stats[39].to_i

  @evo_2_light_hp = @stats[40].to_i
  @evo_2_light_attack = @stats[41].to_i
  @evo_2_light_defence = @stats[42].to_i
  @evo_2_light_recovery = @stats[43].to_i

  @evo_3_light_hp = @stats[44].to_i
  @evo_3_light_attack = @stats[45].to_i
  @evo_3_light_defence = @stats[46].to_i
  @evo_3_light_recovery = @stats[47].to_i

  @evo_1_dark_hp = @stats[48].to_i
  @evo_1_dark_attack = @stats[49].to_i
  @evo_1_dark_defence = @stats[50].to_i
  @evo_1_dark_recovery = @stats[51].to_i

  @evo_2_dark_hp = @stats[52].to_i
  @evo_2_dark_attack = @stats[53].to_i
  @evo_2_dark_defence = @stats[54].to_i
  @evo_2_dark_recovery = @stats[55].to_i

  @evo_3_dark_hp = @stats[56].to_i
  @evo_3_dark_attack = @stats[57].to_i
  @evo_3_dark_defence = @stats[58].to_i
  @evo_3_dark_recovery = @stats[59].to_i
end

@counter = 1

@links.each do |link|
  url = "https://monstersuperleague.fandom.com/"
  url2 = url + link
  html_file2 = open(url2).read
  html_doc2 = Nokogiri::HTML(html_file2)

  name_scrape(html_doc2)
  type_scrape(html_doc2)
  img_scrape(html_doc2)
  skill_1_scrape(html_doc2)
  skill_2_scrape(html_doc2)
  # leader_skill_scrape(html_doc2)
  stat_scrape(html_doc2)

  unless Specie.find_by(name: @evo_1_name)

    puts "Astromon #{@counter}"

    if @fire_evo_1_img
      fire1 = Specie.new(
        slug: "#{@evo_1_name} - Fire",
        name: @evo_1_name,
        typing: @fire_type,
        element: "Fire",
        pic: @fire_evo_1_img,
        evo: 1,
        hp: @evo_1_fire_hp,
        attack: @evo_1_fire_attack,
        defence: @evo_1_fire_defence,
        recovery: @evo_1_fire_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @fire_skill_1_name,
        first_skill_desc: @fire_skill_1_desc,
        first_skill_pic: @fire_skill_1_img,
        second_skill_name: @fire_skill_2_name,
        second_skill_desc: @fire_skill_2_desc,
        second_skill_pic: @fire_skill_2_img,
        )
      fire1.save!

      fire2 = Specie.new(
        slug: "#{@evo_2_name} - Fire",
        name: @evo_2_name,
        typing: @fire_type,
        element: "Fire",
        pic: @fire_evo_2_img,
        evo: 2,
        hp: @evo_2_fire_hp,
        attack: @evo_2_fire_attack,
        defence: @evo_2_fire_defence,
        recovery: @evo_2_fire_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @fire_skill_1_name,
        first_skill_desc: @fire_skill_1_desc,
        first_skill_pic: @fire_skill_1_img,
        second_skill_name: @fire_skill_2_name,
        second_skill_desc: @fire_skill_2_desc,
        second_skill_pic: @fire_skill_2_img,
        )
      fire2.save!

      fire3 = Specie.new(
        slug: "#{@evo_3_name} - Fire",
        name: @evo_3_name,
        typing: @fire_type,
        element: "Fire",
        pic: @fire_evo_3_img,
        evo: 2,
        hp: @evo_3_fire_hp,
        attack: @evo_3_fire_attack,
        defence: @evo_3_fire_defence,
        recovery: @evo_3_fire_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @fire_skill_1_name,
        first_skill_desc: @fire_skill_1_desc,
        first_skill_pic: @fire_skill_1_img,
        second_skill_name: @fire_skill_2_name,
        second_skill_desc: @fire_skill_2_desc,
        second_skill_pic: @fire_skill_2_img,
        )
      fire3.save!
    end

    if @water_evo_1_img
      water1 = Specie.new(
        slug: "#{@evo_1_name} - Water",
        name: @evo_1_name,
        typing: @water_type,
        element: "Water",
        pic: @water_evo_1_img,
        evo: 1,
        hp: @evo_1_water_hp,
        attack: @evo_1_water_attack,
        defence: @evo_1_water_defence,
        recovery: @evo_1_water_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @water_skill_1_name,
        first_skill_desc: @water_skill_1_desc,
        first_skill_pic: @water_skill_1_img,
        second_skill_name: @water_skill_2_name,
        second_skill_desc: @water_skill_2_desc,
        second_skill_pic: @water_skill_2_img,
        )
      water1.save!

      water2 = Specie.new(
        slug: "#{@evo_2_name} - Water",
        name: @evo_2_name,
        typing: @water_type,
        element: "Water",
        pic: @water_evo_2_img,
        evo: 2,
        hp: @evo_2_water_hp,
        attack: @evo_2_water_attack,
        defence: @evo_2_water_defence,
        recovery: @evo_2_water_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @water_skill_1_name,
        first_skill_desc: @water_skill_1_desc,
        first_skill_pic: @water_skill_1_img,
        second_skill_name: @water_skill_2_name,
        second_skill_desc: @water_skill_2_desc,
        second_skill_pic: @water_skill_2_img,
        )
      water2.save!

      water3 = Specie.new(
        slug: "#{@evo_3_name} - Water",
        name: @evo_3_name,
        typing: @water_type,
        element: "Water",
        pic: @water_evo_3_img,
        evo: 2,
        hp: @evo_3_water_hp,
        attack: @evo_3_water_attack,
        defence: @evo_3_water_defence,
        recovery: @evo_3_water_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @water_skill_1_name,
        first_skill_desc: @water_skill_1_desc,
        first_skill_pic: @water_skill_1_img,
        second_skill_name: @water_skill_2_name,
        second_skill_desc: @water_skill_2_desc,
        second_skill_pic: @water_skill_2_img,
        )
      water3.save!
    end

    if @wood_evo_1_img
      wood1 = Specie.new(
        slug: "#{@evo_1_name} - Wood",
        name: @evo_1_name,
        typing: @wood_type,
        element: "Wood",
        pic: @wood_evo_1_img,
        evo: 1,
        hp: @evo_1_wood_hp,
        attack: @evo_1_wood_attack,
        defence: @evo_1_wood_defence,
        recovery: @evo_1_wood_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @wood_skill_1_name,
        first_skill_desc: @wood_skill_1_desc,
        first_skill_pic: @wood_skill_1_img,
        second_skill_name: @wood_skill_2_name,
        second_skill_desc: @wood_skill_2_desc,
        second_skill_pic: @wood_skill_2_img,
        )
      wood1.save!

      wood2 = Specie.new(
        slug: "#{@evo_2_name} - Wood",
        name: @evo_2_name,
        typing: @wood_type,
        element: "Wood",
        pic: @wood_evo_2_img,
        evo: 2,
        hp: @evo_2_wood_hp,
        attack: @evo_2_wood_attack,
        defence: @evo_2_wood_defence,
        recovery: @evo_2_wood_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @wood_skill_1_name,
        first_skill_desc: @wood_skill_1_desc,
        first_skill_pic: @wood_skill_1_img,
        second_skill_name: @wood_skill_2_name,
        second_skill_desc: @wood_skill_2_desc,
        second_skill_pic: @wood_skill_2_img,
        )
      wood2.save!

      wood3 = Specie.new(
        slug: "#{@evo_3_name} - Wood",
        name: @evo_3_name,
        typing: @wood_type,
        element: "Wood",
        pic: @wood_evo_3_img,
        evo: 2,
        hp: @evo_3_wood_hp,
        attack: @evo_3_wood_attack,
        defence: @evo_3_wood_defence,
        recovery: @evo_3_wood_recovery,
        crit_dmg: 50,
        crit_rate: 10,
        resist: 20,
        first_skill_name: @wood_skill_1_name,
        first_skill_desc: @wood_skill_1_desc,
        first_skill_pic: @wood_skill_1_img,
        second_skill_name: @wood_skill_2_name,
        second_skill_desc: @wood_skill_2_desc,
        second_skill_pic: @wood_skill_2_img,
        )
      wood3.save!
    end

    if @light_evo_1_img
      light1 = Specie.new(
        slug: "#{@evo_1_name} - Light",
        name: @evo_1_name,
        typing: @light_type,
        element: "Light",
        pic: @light_evo_1_img,
        evo: 1,
        hp: @evo_1_light_hp,
        attack: @evo_1_light_attack,
        defence: @evo_1_light_defence,
        recovery: @evo_1_light_recovery,
        crit_dmg: 50,
        crit_rate: 20,
        resist: 0,
        first_skill_name: @light_skill_1_name,
        first_skill_desc: @light_skill_1_desc,
        first_skill_pic: @light_skill_1_img,
        second_skill_name: @light_skill_2_name,
        second_skill_desc: @light_skill_2_desc,
        second_skill_pic: @light_skill_2_img,
        )
      light1.save!

      if light1[:type] == "Recovery"
        light1[:resist] = 30
      end

      light2 = Specie.new(
        slug: "#{@evo_2_name} - Light",
        name: @evo_2_name,
        typing: @light_type,
        element: "Light",
        pic: @light_evo_2_img,
        evo: 2,
        hp: @evo_2_light_hp,
        attack: @evo_2_light_attack,
        defence: @evo_2_light_defence,
        recovery: @evo_2_light_recovery,
        crit_dmg: 50,
        crit_rate: 20,
        resist: 0,
        first_skill_name: @light_skill_1_name,
        first_skill_desc: @light_skill_1_desc,
        first_skill_pic: @light_skill_1_img,
        second_skill_name: @light_skill_2_name,
        second_skill_desc: @light_skill_2_desc,
        second_skill_pic: @light_skill_2_img,
        )
      light2.save!

      if light2[:type] == "Recovery"
        light2[:resist] = 30
      end

      light3 = Specie.new(
        slug: "#{@evo_3_name} - Light",
        name: @evo_3_name,
        typing: @light_type,
        element: "Light",
        pic: @light_evo_3_img,
        evo: 2,
        hp: @evo_3_light_hp,
        attack: @evo_3_light_attack,
        defence: @evo_3_light_defence,
        recovery: @evo_3_light_recovery,
        crit_dmg: 50,
        crit_rate: 20,
        resist: 0,
        first_skill_name: @light_skill_1_name,
        first_skill_desc: @light_skill_1_desc,
        first_skill_pic: @light_skill_1_img,
        second_skill_name: @light_skill_2_name,
        second_skill_desc: @light_skill_2_desc,
        second_skill_pic: @light_skill_2_img,
        )
      light3.save!

      if light3[:type] == "Recovery"
        light3[:resist] = 30
      end
    end

    if @dark_evo_1_img
      dark1 = Specie.new(
        slug: "#{@evo_1_name} - Dark",
        name: @evo_1_name,
        typing: @dark_type,
        element: "Dark",
        pic: @dark_evo_1_img,
        evo: 1,
        hp: @evo_1_dark_hp,
        attack: @evo_1_dark_attack,
        defence: @evo_1_dark_defence,
        recovery: @evo_1_dark_recovery,
        crit_dmg: 100,
        crit_rate: 10,
        resist: 0,
        first_skill_name: @dark_skill_1_name,
        first_skill_desc: @dark_skill_1_desc,
        first_skill_pic: @dark_skill_1_img,
        second_skill_name: @dark_skill_2_name,
        second_skill_desc: @dark_skill_2_desc,
        second_skill_pic: @dark_skill_2_img,
        )
      dark1.save!

      if dark1[:type] == "Recovery"
        dark1[:resist] = 30
      end

      dark2 = Specie.new(
        slug: "#{@evo_2_name} - Dark",
        name: @evo_2_name,
        typing: @dark_type,
        element: "Dark",
        pic: @dark_evo_2_img,
        evo: 2,
        hp: @evo_2_dark_hp,
        attack: @evo_2_dark_attack,
        defence: @evo_2_dark_defence,
        recovery: @evo_2_dark_recovery,
        crit_dmg: 100,
        crit_rate: 10,
        resist: 0,
        first_skill_name: @dark_skill_1_name,
        first_skill_desc: @dark_skill_1_desc,
        first_skill_pic: @dark_skill_1_img,
        second_skill_name: @dark_skill_2_name,
        second_skill_desc: @dark_skill_2_desc,
        second_skill_pic: @dark_skill_2_img,
        )
      dark2.save!

      if dark2[:type] == "Recovery"
        dark2[:resist] = 30
      end

      dark3 = Specie.new(
        slug: "#{@evo_3_name} - Dark",
        name: @evo_3_name,
        typing: @dark_type,
        element: "Dark",
        pic: @dark_evo_3_img,
        evo: 2,
        hp: @evo_3_dark_hp,
        attack: @evo_3_dark_attack,
        defence: @evo_3_dark_defence,
        recovery: @evo_3_dark_recovery,
        crit_dmg: 100,
        crit_rate: 10,
        resist: 0,
        first_skill_name: @dark_skill_1_name,
        first_skill_desc: @dark_skill_1_desc,
        first_skill_pic: @dark_skill_1_img,
        second_skill_name: @dark_skill_2_name,
        second_skill_desc: @dark_skill_2_desc,
        second_skill_pic: @dark_skill_2_img,
        )
      dark3.save!

      if dark3[:type] == "Recovery"
        dark3[:resist] = 30
      end
    end
    @counter += 1
  end
end

puts "Finished"

