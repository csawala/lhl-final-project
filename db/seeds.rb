# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "\nFertilizing..."

## Helper functions
# images when called will be process by minimagick to be called as:
#   organization.image._____  (thumb = 150x150 // card = 300x300 // full = 500x500)
def open_image(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

## --- USERS ---
puts "\npurging Users..."
User.destroy_all
puts "-> done!"
puts "Re-creating Users"


# test 'normal' user, no business/charity association
User.create!({
  first_name: 'Joe',
  last_name: 'Userguy',
  email: 'j@j.com',
  phone: 6472882828,
  password: 'password',
  password_confirmation: 'password'
  })
# test user linked to a charity
User.create!({
  first_name: 'Tina',
  last_name: 'Charitygal',
  email: 'tina@dailybread.ca',
  phone: 4168225544,
  password: 'password',
  password_confirmation: 'password'
  })
# test user linked to a business
User.create!({
  first_name: 'Jim',
  last_name: 'Businessman',
  email: 'jim@mec.ca',
  phone: 4167774646,
  password: 'password',
  password_confirmation: 'password'
  })

## --- CATEGORIES ---
puts "\npurging Categories..."
Category.destroy_all
puts "-> done!"
puts "Re-creating Categories"

Category.create!({ name: 'health' })
Category.create!({ name: 'education' })
Category.create!({ name: 'poverty' })
Category.create!({ name: 'human rights' })
Category.create!({ name: 'animal rights' })
Category.create!({ name: 'environment' })
Category.create!({ name: 'religion' })
Category.create!({ name: 'community development' })
Category.create!({ name: 'arts and culture' })
Category.create!({ name: 'sport' })
Category.create!({ name: 'disadvantaged' })


## --- ORGANIZATIONS ---
puts "\npurging Organizations..."
Organization.destroy_all
puts "-> done!"
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
  image: open_image('org1.jpg'),
  orgtype: 'charity',
  description: "Canadian Blood Services is a not-for-profit, charitable organization operating at arm's length from government. Its sole mission is to manage the blood supply for Canadians. Created in 1998, it is the successor to the Canadian Red Cross Blood Program and the Canadian Blood Agency (the former funding arm of Canada's blood supply system)."
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
  image: open_image('org2.jpg'),
  orgtype: 'charity',
  description: "All of us at SickKids are fighting the same battle: to make every kid a healthy kid. Our vision is simple: Healthier Children. A Better World. We believe fighting for the health and wellbeing of children is one of the most powerful ways to improve society."
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
  image: open_image('org3.png'),
  orgtype: 'charity',
  description: "The Salvation Army exists to share the love of Jesus Christ, meet human needs and be a transforming influence in the communities of our world."
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
  image: open_image('org4.png'),
  orgtype: 'charity',
  description: "A leader and collaborator promoting the welfare of children, youth and families through leadership, service excellence and advocacy."
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
  image: open_image('org5.jpg'),
  orgtype: 'charity',
  user_id: 2,
  description: "We believe that access to food is a basic human right, not a privilege. No one should go hungry. We believe that no one should face barriers in accessing food."
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
  image: open_image('org6.jpg'),
  orgtype: 'charity',
  description: "It is the mission of The Toronto Humane Society to promote the humane care and protection of all animals and to prevent cruelty and suffering. Following no kill principles, the Toronto Humane Society aspires to be a best-in-class animal shelter – working in partnership with the community to find creative solutions and improve outcomes for all animals."
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
  image: open_image('org7.jpg'),
  orgtype: 'charity',
  description: "Our vision is a world where everyone has a safe and decent place to live. Our mission is to mobilize volunteers and community partners in building affordable housing and promoting homeownership as a means to breaking the cycle of poverty."
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
  image: open_image('org8.jpg'),
  orgtype: 'charity',
  description: "Christian Children’s Fund of Canada creates a future of hope for children, families, and communities by helping them develop the skills and resources to overcome poverty and pursue justice. For more than 50 years, we have followed the example of Christ by serving the poor regardless of their faith, cultural, and ethnic background."
  })


org9 = Organization.create!({
  name: 'KidSport',
  address: '2041-875 Morningside Ave',
  city: 'Toronto',
  postal: 'M1C0C7',
  province: 'ON',
  email: 'donor-relations@ccfcanada.ca',
  primaryphone:  4162830940,
  url: 'http://www.kidsportcanada.ca/',
  image: open_image('org14.jpg'),
  orgtype: 'charity',
  description: "KidSport is a grass roots Canadian non-profit organization that provides support to under-resourced children and youth 18 years of age and under across the country by removing financial barriers that prevent them from playing organized sport."
  })

org10 = Organization.create!({
  name: 'Earth Rangers',
  address: '9520 Pine Valley Drive',
  city: 'Woodbridge',
  postal: 'L4L1A6',
  province: 'ON',
  email: 'donor-relations@ccfcanada.ca',
  primaryphone:  9054173447,
  url: 'http://www.earthrangers.com',
  image: open_image('org15.png'),
  orgtype: 'charity',
  description: "Earth Rangers is an innovative charitable organization with a mission to inspire children with a lasting passion to build a better future."
  })

org11 = Organization.create!({
  name: 'Toronto International Film Festival (TIFF)',
  address: ' 350 King Street West',
  city: 'Toronto',
  postal: 'M5V3X5',
  province: 'ON',
  email: 'donate@tiff.net',
  primaryphone:  18885998433,
  secondaryphone: 4165998433,
  url: 'http://tiff.net',
  image: open_image('org16.jpg'),
  orgtype: 'charity',
  description: "The Toronto International Film Festival (TIFF) is a charitable, not for profit, cultural organization whose mission is to transform the way people see the world. Its vision is to lead the world in creative and cultural discovery through the moving image."
  })

# ------- BUSINESSES --------
org12 = Organization.create!({
  name: 'The Kitchen Table',
  address: '12 Queens Quay West',
  city: 'Toronto',
  postal: 'M5J2V7',
  province: 'ON',
  primaryphone: 4167784800,
  url: 'http://www.thekitchentable.ca/',
  image: open_image('org9.jpg'),
  orgtype: 'business',
  })

org13 = Organization.create!({
  name: 'Carpenters Local 27',
  address: '222 Rowntree Dairy Road',
  city: 'Woodbridge',
  postal: 'L4L9T2',
  province: 'ON',
  email: 'organizing@thecarpentersunion.ca',
  primaryphone: 9056524140,
  url: 'http://www.carpenterslocal27.ca/',
  image: open_image('org10.jpg'),
  orgtype: 'business',
  })

org14 = Organization.create!({
  name: 'Lighthouse Labs',
  address: '46 Spadina Ave',
  suite: '4th Floor',
  city: 'Toronto',
  postal: 'M5V2H8',
  province: 'ON',
  email: 'hello@lighthouselabs.ca',
  primaryphone: 18885696898,
  url: 'https://lighthouselabs.ca/',
  image: open_image('org11.png'),
  orgtype: 'business',
  })

org15 = Organization.create!({
  name: 'Alo Restaurant',
  address: '163 Spadina Ave',
  suite: '3rd Floor',
  city: 'Toronto',
  postal: 'M5V2L6',
  province: 'ON',
  email: 'info@alorestaurant.com',
  primaryphone: 4162602222,
  url: 'http://alorestaurant.com/',
  image: open_image('org12.jpg'),
  orgtype: 'business',
  })

org16 = Organization.create!({
  name: 'Mountain Equipment Co-Op',
  address: '1077 Great Northern Way',
  city: 'Vancouver',
  postal: 'V5T1E1',
  province: 'BC',
  email: 'info@mec.ca',
  primaryphone: 6047073300,
  url: 'https://www.mec.ca/',
  image: open_image('org13.jpg'),
  orgtype: 'business',
  user_id: 3
  })



## --- ORG CATEGORIES ---
# Category = 'causes' in our context
puts "\npurging organization categories"
CategoriesOrganization.destroy_all
puts "-> done!"
puts "Re-creating Organizations' categories"

cat_org1 = CategoriesOrganization.create!({
  category_id: 1,
  organization_id: 1
})

cat_org2 = CategoriesOrganization.create!({
  category_id: 1,
  organization_id: 2
})

cat_org3 = CategoriesOrganization.create!({
  category_id: 3,
  organization_id: 3
})

cat_org4 = CategoriesOrganization.create!({
  category_id: 11,
  organization_id: 3
})

cat_org5 = CategoriesOrganization.create!({
  category_id: 8,
  organization_id: 3
})

cat_org6 = CategoriesOrganization.create!({
  category_id: 1,
  organization_id: 4
})

cat_org7 = CategoriesOrganization.create!({
  category_id: 2,
  organization_id: 4
})

cat_org8 = CategoriesOrganization.create!({
  category_id: 3,
  organization_id: 5
})

cat_org9 = CategoriesOrganization.create!({
  category_id: 4,
  organization_id: 5
})

cat_org10 = CategoriesOrganization.create!({
  category_id: 11,
  organization_id: 5
})

cat_org11 = CategoriesOrganization.create!({
  category_id: 5,
  organization_id: 6
})

cat_org12 = CategoriesOrganization.create!({
  category_id: 3,
  organization_id: 7
})

cat_org13 = CategoriesOrganization.create!({
  category_id: 4,
  organization_id: 7
})

cat_org14 = CategoriesOrganization.create!({
  category_id: 10,
  organization_id: 7
})

cat_org15 = CategoriesOrganization.create!({
  category_id: 3,
  organization_id: 8
})

cat_org16 = CategoriesOrganization.create!({
  category_id: 7,
  organization_id: 8
})

cat_org17 = CategoriesOrganization.create!({
  category_id: 10,
  organization_id: 9
})

cat_org18 = CategoriesOrganization.create!({
  category_id: 3,
  organization_id: 9
})

cat_org19 = CategoriesOrganization.create!({
  category_id: 6,
  organization_id: 10
})

cat_org20 = CategoriesOrganization.create!({
  category_id: 2,
  organization_id: 10
})

cat_org21 = CategoriesOrganization.create!({
  category_id: 9,
  organization_id: 11
})

## --- GOODS TYPES ---
puts "\npurging GoodsTypes..."
GoodsType.destroy_all
puts "-> done!"
puts "Re-creating GoodsTypes"

g1 = GoodsType.create!({
  name: "food"
})

g2 = GoodsType.create!({
  name: "hygiene items"
})

g3 = GoodsType.create!({
  name: "furniture"
})

g4 = GoodsType.create!({
  name: "clothing"
})

g5 = GoodsType.create!({
  name: "home supplies"
})

g6 = GoodsType.create!({
  name: "business supplies"
})

g7 = GoodsType.create!({
  name: "volunteers"
})

g8 = GoodsType.create!({
  name: "skilled labour"
})

g9 = GoodsType.create!({
  name: "unskilled labour"
})

g10 = GoodsType.create!({
  name: "cash donations"
})

## --- ORG GOODS ---
puts "\npurging organizations' goods data"
GoodsTypesOrganization.destroy_all
puts "-> done!"
puts "Re-creating organizations' goods data"

org1.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'We are always looking for adults to donate to our blood bank'
})
org2.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Sick Kids puts your donations to work helping children and building important hospital infrastructure'
})
org2.goods_types_organizations.create!({
  goods_type_id: 9,
  needs: true,
  description: 'We are looking for canvassers who can help us go door-to-door seeking donations in the community'
})
org3.goods_types_organizations.create!({
  goods_type_id: 4,
  needs: true,
  description: 'If you have unused clothing in new or excellent condition, help us get it to those in need'
})
org3.goods_types_organizations.create!({
  goods_type_id: 2,
  needs: true,
  description: 'We always need new personal hygiene items like toothbrushes, soap, shaving goods and shampoo for our homeless outreach programs'
})
org3.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'We can always use more help in our many programs, please contact for details'
})
org3.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Your generous donations will go to work fighting poverty in our community'
})
org3.goods_types_organizations.create!({
  goods_type_id: 3,
  needs: true,
  description: 'Looking for household furniture in new or very good condition, we can arrange pickup'
})
org4.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'Contribute to your community by connecting to families who need your support'
})
org4.goods_types_organizations.create!({
  goods_type_id: 8,
  needs: true,
  description: 'We frequently need family lawyers who can volunteer their time - please contact for more details'
})
org5.goods_types_organizations.create!({
  goods_type_id: 1,
  needs: true,
  description: 'Right now we need more fresh produce - will also accept non-perishables or grocery gift cards'
})
org5.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Your donations are used to help feed families in need'
})
org5.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'Our biggest need for volunteers often comes at the beginning of the year'
})
org5.goods_types_organizations.create!({
  goods_type_id: 1,
  offers: true,
  description: 'Right now we have excess of some types of non-perishables, please contact if your food bank or charity is in need of food'
})
org5.goods_types_organizations.create!({
  goods_type_id: 2,
  needs: true,
  active: false,
  description: 'TESTING FOR INACTIVE NEED'
})
org5.goods_types_organizations.create!({
  goods_type_id: 6,
  offers: true,
  active: false,
  description: 'TESTING FOR INACTIVE OFFER'
})
org6.goods_types_organizations.create!({
  goods_type_id: 1,
  needs: true,
  description: 'Pet food and treat donations are always welcome, please contact to learn what we need right now'
})
org6.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'We need help walking dogs, petting cats & rats, and cuddling bunnies. Really!'
})
org6.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Your spare cash can help animals stay healthy and find homes'
})
org7.goods_types_organizations.create!({
  goods_type_id: 3,
  needs: true,
  description: 'Help furnish homes for those in need - please let us know if you have unused furniture (couches, chairs, tables, lamps, TVs, etc), we can pick up!'
})
org7.goods_types_organizations.create!({
  goods_type_id: 5,
  needs: true,
  description: 'Donations of building supplies are welcome, your spare renovation hardware and materials can go to good use'
})
org7.goods_types_organizations.create!({
  goods_type_id: 8,
  needs: true,
  description: 'Contractors & contruction workers, please lend your expertise - together we can improve lives and show the community you care'
})
org7.goods_types_organizations.create!({
  goods_type_id: 2,
  offers: true,
  description: 'We received a generous donation of personal hygiene goods, but have no means to distribute - please contact for details'
})
org8.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Sponsor a child in need today - making a difference is easy'
})
org8.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'Care about kids? We need community advocates to raise awareness'
})
org9.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Play keeps kids healthy and active, please donate to help grow our future generation\'s love of sports'
})
org9.goods_types_organizations.create!({
  goods_type_id: 4,
  needs: true,
  description: 'If you have new kids sports gear or helmets, we can always use more'
})
org9.goods_types_organizations.create!({
  goods_type_id: 8,
  needs: true,
  description: 'We need experienced coaches in our Baseball and Basketball programs, please contact for details'
})
org9.goods_types_organizations.create!({
  goods_type_id: 9,
  needs: true,
  description: 'Help with our 50/50 ticket program at the Air Canada Centre, get free pizza and watch the 3rd period of the Leafs game!'
})
org10.goods_types_organizations.create!({
  goods_type_id: 10,
  needs: true,
  description: 'Your donations fund programs that help kids gain an appreciation for conservation of the environment'
})
org11.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'Volunteer for our film festivals, watch great movies on us'
})
org11.goods_types_organizations.create!({
  goods_type_id: 6,
  needs: true,
  description: 'Believe it or not, we go through lots of pens, paper, and other office goods - if you have extra, please let us take them off your hands so we can put donor funds to better use'
})
org12.goods_types_organizations.create!({
  goods_type_id: 1,
  offers: true,
  description: 'We often have extra fresh baked and produce goods, but would rather not throw it all away'
})
org13.goods_types_organizations.create!({
  goods_type_id: 8,
  offers: true,
  description: 'Several experienced chapter members are off contracts, looking to contribute in the community'
})
org13.goods_types_organizations.create!({
  goods_type_id: 3,
  offers: true,
  description: 'Several pieces of quality furniture made lovingly by the good folks of Carpenters Local - also open to new projects if there is a specific need, please contact'
})
org13.goods_types_organizations.create!({
  goods_type_id: 1,
  offers: true,
  description: 'We are running a food drive, and need to find a home for lots of non-perishables'
})
org14.goods_types_organizations.create!({
  goods_type_id: 4,
  offers: true,
  description: 'We have lots of unworn branded T-shirts and sweaters for anyone who needs them, various sizes available'
})
org14.goods_types_organizations.create!({
  goods_type_id: 8,
  offers: true,
  description: 'Several of our Web Developers are looking to volunteer their time to help improve the web presence of charities in the community'
})
org14.goods_types_organizations.create!({
  goods_type_id: 5,
  offers: true,
  description: 'We have a bunch of spare unused kitchen supplies which we would love to see go to those in need'
})
org14.goods_types_organizations.create!({
  goods_type_id: 9,
  offers: true,
  description: 'Some of our students need to progress their work ethic - please let us know if you need labourers in any area'
})
org15.goods_types_organizations.create!({
  goods_type_id: 8,
  offers: true,
  description: 'Our chefs love to cook fine foods, and want to participate in community events for those in need'
})
org15.goods_types_organizations.create!({
  goods_type_id: 6,
  offers: true,
  description: 'In case any charities can use them, we have a surplus of some basic office supplies which we can no longer store'
})
org16.goods_types_organizations.create!({
  goods_type_id: 4,
  offers: true,
  description: 'We have piles of blemished but new clothing, backpacks and helmets for all sizes, adults and kids'
})
org16.goods_types_organizations.create!({
  goods_type_id: 1,
  offers: true,
  description: 'Boxes of energy bars have recently been discontinued but are not expired, cannot sell but would rather not throw away'
})
org16.goods_types_organizations.create!({
  goods_type_id: 7,
  needs: true,
  description: 'Looking for runners who would volunteer to lead community social/fun runs throughout the week, please contact for details'
})
org16.goods_types_organizations.create!({
  goods_type_id: 7,
  offers: true,
  description: 'MEC staffers are regularly looking for new volunteer opportunities in the community - let us know where we can help!'
})
org16.goods_types_organizations.create!({
  goods_type_id: 10,
  offers: true,
  description: 'New fundraisers are coming for 2017 - please let us know if your charity wants to partner in raising cash for your cause'
})

puts "\nAll done!"
