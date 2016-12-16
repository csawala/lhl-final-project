# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "\nFertilizing..."

## --- USERS ---

User.destroy_all
puts "\nRe-creating Users"

# test 'normal' user, no business/charity association
User.create!({
  first_name: 'Joe',
  last_name: 'Userguy',
  email: 'j@j.com',
  phone: 6472882828
  })
# test user linked to a charity
User.create!({
  first_name: 'Tina',
  last_name: 'Charitygal',
  email: 't@t.com',
  phone: 4168225544
  })
# test user linked to a business
User.create!({
  first_name: 'Jim',
  last_name: 'Businessman',
  email: 'b@b.com',
  phone: 4167774646
  })
# User.create!({
#   first_name: ,
#   last_name: ,
#   email: ,
#   phone:
#   })

## --- CATEGORIES ---
Category.destroy_all
puts "Re-creating Categories"

cat1 = Category.create!({ name: 'health' })
cat2 = Category.create!({ name: 'education' })
cat3 = Category.create!({ name: 'food' })
cat4 = Category.create!({ name: 'humanitarian' })
cat5 = Category.create!({ name: 'animal' })
cat6 = Category.create!({ name: 'environment' })

## --- ORGANIZATIONS ---

Organization.destroy_all
puts "Re-creating Organizations"

org1 = Organization.create!({
  name: 'Creatively-named Charity',
  address: '1122 Bloor St W',
  city: 'Toronto',
  postal: 'M5M3V3',
  province: 'ON',
  email: 'info@charity.com',
  primaryphone: 4165554433,
  url: 'creativelynamedcharity.ca',
  orgtype: 'charity',
  user_id: 2
  })

org2 = Organization.create!({
  name: 'Big-Biz',
  address: '25 Bloor St E',
  city: 'Toronto',
  postal: 'M4M3B3',
  province: 'ON',
  email: 'info@big-biz.ca',
  primaryphone: 4165551122,
  url: 'big-biz.ca',
  orgtype: 'business',
  user_id: 3
  })
## --- ORG-CATEGORIES ---
OrgCategory.destroy_all
puts "Re-creating OrgCategories"
# org1.org_category.create!({
#   offers:
#   needs:
#   category_id:
#   })

## --- GOODS-TYPE ---

puts "\nAll done!"