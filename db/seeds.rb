puts "🌱 Seeding..."

# Seed your database here
puts "Deleting old data..."
Category.destroy_all
Opportunity.destroy_all
Volunteer.destroy_all

puts "Creating categories..."
category1 = Category.create(name: "Beach Cleanup")
category2 = Category.create(name: "Help the Animals")
category3 = Category.create(name: "Feed the Hungry")
category4 = Category.create(name: "Raise Money")

puts "Creating volunteers..."
user1 = Volunteer.create(name: "Mariya Rojano", phone: 619-123-4567)
user2 = Volunteer.create(name: "Blake Thomas", phone: 659-673-4527)
user3 = Volunteer.create(name: "Mike Brown", phone: 339-183-4567)
user4 = Volunteer.create(name: "Sandra Reynolds", phone: 613-423-4467)

puts "Creating opportunities..."
opp1 = Opportunity.create(title: "Volunteer to Clean Torrey Pines Beach", org_name: "Love Our Beaches", date: "2021-10-02", time: "10:00 AM PST", location: "Torrey Pines State Beach", description: "Don't forget to bring sunscreen and trashbags", img: "https://cdn.shopify.com/s/files/1/0996/1022/files/getinvolved-covidmodule_68a5702c-a234-4c42-9dc8-bba55fbbf489_1600x.jpg?v=1592568876", volunteer_id: user1.id, category_id: category1.id)
opp2 = Opportunity.create(title: "Volunteer at Soup Kitchen", org_name: "San Diego Food Bank", date: "2021-10-16", time: "2:00 PM PST", location: "12332 5th Ave, San Diego, CA 92101", description: "Please bring your own chair.", img: "https://rewardvolunteers.coop/custom/1485/images/howtoHelp/Top-10-Soup-Kitchen-Recipe-Ideas-Reward-Volunteers.jpg", volunteer_id: user2.id, category_id: category3.id)
opp3 = Opportunity.create(title: "Volunteer at Animal Shelter", org_name: "LA Animal Rescue", date: "2021-11-10", time: "4:00 PM PST", location: "1332 First St, Los Angeles, CA 90201", description: "Please bring dog treats", img: "https://i.insider.com/5484d9d1eab8ea3017b17e29?width=600&format=jpeg&auto=webp", volunteer_id: user3.id, category_id: category2.id)
opp4 = Opportunity.create(title: "Volunteer at Thrift Store", org_name: "Goodwill Denver", date: "2021-12-02", time: "11:00 AM MST", location: "21 S Broadway, Denver, CO 80209", description: "Please arrive on time", img: "https://www.goodwillmass.org/wp-content/uploads/2021/02/map-image.png", volunteer_id: user4.id, category_id: category4.id)


puts "✅ Done seeding!"

puts "Returns the category for the opportunity"
puts opp1.category.name
puts
puts "Returns the date of the opportunity"
puts opp1.date 
puts
puts "Returns the time of the opportunity"
puts opp1.time 

