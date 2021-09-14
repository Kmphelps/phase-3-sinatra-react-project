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

puts "Creating opportunities..."
opp1 = Opportunity.create(title: "Volunteer to Clean Torrey Pines Beach", date: "2021-10-02", time: "10:00 AM PST", location: "Torrey Pines State Beach", description: "Don't forget to bring sunscreen and trashbags", maxvolunteers: 8, category_id: category1.id)

puts "Creating volunteers..."
user1 = Volunteer.create(name: "Mariya Rojano", phone: 619-123-4567)

puts "✅ Done seeding!"

puts "Returns the category for the opportunity"
puts opp1.category.name
puts
puts "Returns the date of the opportunity"
puts opp1.date 
puts
puts "Returns the time of the opportunity"
puts opp1.time 

