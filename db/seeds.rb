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
  email: 't@blood.ca',
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
cat3 = Category.create!({ name: 'poverty' })
cat4 = Category.create!({ name: 'human rights' })
cat5 = Category.create!({ name: 'animal rights' })
cat6 = Category.create!({ name: 'environment' })
cat7 = Category.create!({ name: 'religion' })
cat8 = Category.create!({ name: 'community development' })
cat9 = Category.create!({ name: 'arts, culture, heritage or science' })
cat10 = Category.create!({ name: 'sport' })
cat11 = Category.create!({ name: 'disadvantage' })


## --- ORGANIZATIONS ---

Organization.destroy_all
puts "Re-creating Organizations"

# ------ CHARITIES --------
org1 = Organization.create!({
  name: 'Canadian Blood Services',
  address: '1800 Alta Vista Drive',
  city: 'Ottawa',
  postal: 'K1G4J5',
  province: 'ON',
  email: 'feedback@blood.ca',
  primaryphone: 18882366283,
  url: 'https://blood.ca/',
  orgtype: 'charity',
  user_id: 2
  })

org2 = Organization.create!({
  name: 'Sick Kids Foundation',
  address: '525 University Avenue',
  city: 'Toronto',
  postal: 'M5G2L3',
  province: 'ON',
  email: 'donor.inquiries@sickkidsfoundation.com',
  primaryphone: 18006611083,
  secondaryphone: 4168136166,
  url: 'http://www.sickkidsfoundation.com/',
  orgtype: 'charity',
  user_id: 2
  })

org3 = Organization.create!({
  name: 'The Salvation Army',
  address: '2 Overlea Boulevard',
  city: 'Toronto',
  postal: 'M4H1P4',
  province: 'ON',
  email: 'donor_questions@can.salvationarmy.org',
  primaryphone: 18007252769,
  url: 'http://www.salvationarmy.ca/',
  orgtype: 'charity',
  user_id: 2
  })

org4 = Organization.create!({
  name: 'Ontario Association of Children\'s Aid Societies',
  address: '75 Front Street East',
  suite: 'Suite 308',
  city: 'Toronto',
  postal: 'M5E1V9',
  province: 'ON',
  email: 'public_editor@oacas.org',
  primaryphone: 18007181797,
  secondaryphone: 4169877725,
  url: 'http://www.oacas.org/',
  orgtype: 'charity',
  user_id: 2
  })

org5 = Organization.create!({
  name: 'Daily Bread Food Bank',
  address: '191 New Toronto Street',
  city: 'Toronto',
  postal: 'M8V2E7',
  province: 'ON',
  email: 'info@dailybread.ca',
  primaryphone: 4162030050,
  url: 'http://www.dailybread.ca/',
  orgtype: 'charity',
  user_id: 2
  })

org6 = Organization.create!({
  name: 'The Toronto Humane Society',
  address: '11 River Street',
  city: 'Toronto',
  postal: 'M5A4C2',
  province: 'ON',
  email: 'fundraising@torontohumanesociety.com',
  primaryphone: 4163922273,
  url: 'https://www.torontohumanesociety.com',
  orgtype: 'charity',
  user_id: 2
  })

org7 = Organization.create!({
  name: 'Habitat for Humanity',
  address: '477 Mount Pleasant Road',
  suite: 'Suite 403',
  city: 'Toronto',
  postal: 'M4S2L9',
  province: 'ON',
  email: 'habitat@habitat.ca',
  primaryphone: 18006675137,
  secondaryphone: 4166440988,
  url: 'http://www.habitat.ca/',
  orgtype: 'charity',
  user_id: 2
  })

org8 = Organization.create!({
  name: 'Christian Children\'s Fund of Canada',
  address: '1200 Denison St',
  city: 'Markham',
  postal: 'L3R8G6',
  province: 'ON',
  email: 'donor-relations@ccfcanada.ca',
  primaryphone: 18002635437,
  secondaryphone: 9057541001,
  url: 'https://www.ccfcanada.ca/',
  orgtype: 'charity',
  user_id: 2
  })

# ------- BUSINESSES --------
org9 = Organization.create!({
  name: 'The Kitchen Table',
  address: '12 Queens Quay West',
  city: 'Toronto',
  postal: 'M5J2V7',
  province: 'ON',
  email: 'noemail@kitchentable.ca',
  primaryphone: 4167784800,
  url: 'http://www.thekitchentable.ca/',
  orgtype: 'business',
  user_id: 3
  })

org10 = Organization.create!({
  name: 'Carpenters Local 27',
  address: '222 Rowntree Dairy Road',
  city: 'Woodbridge',
  postal: 'L4L9T2',
  province: 'ON',
  email: 'organizing@thecarpentersunion.ca',
  primaryphone: 9056524140,
  url: 'http://www.thekitchentable.ca/',
  orgtype: 'business',
  user_id: 3
  })

org11 = Organization.create!({
  name: 'Lighthouse Labs',
  address: '46 Spadina Ave',
  suite: '4th Floor',
  city: 'Toronto',
  postal: 'M5V2H8',
  province: 'ON',
  email: 'hello@lighthouselabs.ca',
  primaryphone: 18885696898,
  url: 'https://lighthouselabs.ca/',
  orgtype: 'business',
  user_id: 3
  })

org12 = Organization.create!({
  name: 'Alo Restaurant',
  address: '163 Spadina Ave',
  suite: '3rd Floor',
  city: 'Toronto',
  postal: 'M5V2L6',
  province: 'ON',
  email: 'info@alorestaurant.com',
  primaryphone: 4162602222,
  url: 'https://lighthouselabs.ca/',
  orgtype: 'business',
  user_id: 3
  })

org13 = Organization.create!({
  name: 'Mountain Equipment Co-Op',
  address: '1077 Great Northern Way',
  city: 'Vancouver',
  postal: 'V5T1E1',
  province: 'BC',
  email: 'info@mec.ca',
  primaryphone: 6047073300,
  url: 'https://www.mec.ca/',
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