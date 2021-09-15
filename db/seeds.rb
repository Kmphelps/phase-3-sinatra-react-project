puts "🌱 Seeding..."

# Seed your database here
puts "Deleting old data..."
Signup.destroy_all
Opportunity.destroy_all
Volunteer.destroy_all


puts "Creating volunteers..."
user1 = Volunteer.create(name: "Mariya Rojano", phone: "619-123-4567")
user2 = Volunteer.create(name: "Blake Thomas", phone: "659-673-4527")
user3 = Volunteer.create(name: "Mike Brown", phone: "339-183-4567")
user4 = Volunteer.create(name: "Sandra Reynolds", phone: "613-423-4467")

puts "Creating opportunities..."
opp1 = Opportunity.create(title: "Volunteer to Clean Torrey Pines Beach", location: "Torrey Pines State Beach", org_name: "Love Our Beaches", date: "2021-10-02", time: "10:00 AM PST", description: "Don't forget to bring sunscreen and trashbags", img: "https://cdn.shopify.com/s/files/1/0996/1022/files/getinvolved-covidmodule_68a5702c-a234-4c42-9dc8-bba55fbbf489_1600x.jpg?v=1592568876", category: "Beach Cleanup")
opp2 = Opportunity.create(title: "Volunteer at Soup Kitchen", location: "12332 5th Ave, San Diego, CA 92101", org_name: "San Diego Food Bank", date: "2021-10-16", time: "2:00 PM PST", description: "Please bring your own chair.", img: "https://rewardvolunteers.coop/custom/1485/images/howtoHelp/Top-10-Soup-Kitchen-Recipe-Ideas-Reward-Volunteers.jpg", category: "Feed the Hungry")
opp3 = Opportunity.create(title: "Volunteer at Animal Shelter", location: "1332 First St, Los Angeles, CA 90201", org_name: "LA Animal Rescue", date: "2021-11-10", time: "4:00 PM PST", description: "Please bring dog treats", img: "https://i.insider.com/5484d9d1eab8ea3017b17e29?width=600&format=jpeg&auto=webp", category: "Save the Animals")
opp4 = Opportunity.create(title: "Volunteer at Thrift Store", location: "21 S Broadway, Denver, CO 80209", org_name: "Goodwill Denver", date: "2021-12-02", time: "11:00 AM MST", description: "Please arrive on time", img: "https://www.goodwillmass.org/wp-content/uploads/2021/02/map-image.png", category: "Raise Money")

puts "Creating signups..."
signup1 = Signup.create(volunteer_id: user1.id, opportunity_id: opp1.id)
signup2 = Signup.create(volunteer_id: user2.id, opportunity_id: opp1.id)
signup3 = Signup.create(volunteer_id: user3.id, opportunity_id: opp2.id)
signup4 = Signup.create(volunteer_id: user4.id, opportunity_id: opp3.id)
signup5 = Signup.create(volunteer_id: user1.id, opportunity_id: opp4.id)


puts "✅ Done seeding!"

puts "Returns the category for the opportunity"
puts opp1.category
puts
puts "Returns the date of the opportunity"
puts opp1.date 
puts
puts "Returns the time of the opportunity"
puts opp1.time 
puts


