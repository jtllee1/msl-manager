# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying data..."

Specie.destroy_all
FirstSkill.destroy_all
SecondSkill.destroy_all
Skill.destroy_all
GemCategory.destroy_all
User.destroy_all

puts "Finished!"


puts "Creating users..."

user = User.new(
  username: "test",
  email: "test@gmail.com",
  password: "123456789",
  )
user.save!

puts "Finished!"


puts "Creating variant skills..."

variant_skill = VariantSkill.new(
  slug: "atk35",
  name: "Fighting Spirit",
  pic: "https://vignette.wikia.nocookie.net/monstersuperleague/images/7/75/Fighting_Spirit.png/revision/latest?cb=20180307015532",
  description: "Increases allies' attack power by 35~40%",
  attack: 35,
  )
variant_skill.save!

puts "Finished!"


puts "Creating skills..."

skill = Skill.new(
  slug: "cstrike",
  name: "Courageous Strike",
  pic: "https://vignette.wikia.nocookie.net/monstersuperleague/images/2/20/Courageous_Strike.png/revision/latest?cb=20170519190411",
  description: "Grants additional attack power proportional to the target's maximum HP.",
  )
skill.save!

skill = Skill.new(
  slug: "ddown802",
  name: "Defence Down",
  pic: "https://vignette.wikia.nocookie.net/monstersuperleague/images/0/03/Defense_Down.png/revision/latest?cb=20160923164351",
  description: "Grants a 80 percent chance to reduce the enemy's defense for 2 turns.",
  )
skill.save!

puts "Finished!"


puts "Creating first skills..."

Skill.all.each do |skill|
  first_skill = FirstSkill.new(
    skill_id: skill.id,
    )
  first_skill.save!
end

puts "Finished!"


puts "Creating second skills..."

Skill.all.each do |skill|
  second_skill = SecondSkill.new(
    skill_id: skill.id,
    )
  second_skill.save!
end

puts "Finished!"


puts "Creating species..."

specie = Specie.new(
  slug: "waterbalroxy",
  name: "Balroxy",
  element: "Water",
  pic: "https://vignette.wikia.nocookie.net/monstersuperleague/images/2/25/Balroxy_Water.png/revision/latest?cb=20170404141226",
  hp: 28813,
  attack: 3562,
  defence: 2452,
  recovery: 2390,
  crit_dmg: 50,
  crit_rate: 10,
  resist: 20,
  first_skill_id: FirstSkill.find_by(skill_id: Skill.find_by(slug: "cstrike").id).id,
  second_skill_id: SecondSkill.find_by(skill_id: Skill.find_by(slug: "ddown802").id).id,
  variant_skill_id: VariantSkill.find_by(slug: "atk35").id,
  )
specie.save!

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


# puts "Creating msl gems..."

# puts "Finished!"


# puts "Creating first gems..."

# puts "Finished!"


# puts "Creating second gems..."

# puts "Finished!"


# puts "Creating third gems..."

# puts "Finished!"


# puts "Creating astromons..."

# puts "Finished!"
