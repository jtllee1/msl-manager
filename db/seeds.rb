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
Astromon.destroy_all
Specie.destroy_all
MslGem.destroy_all
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

