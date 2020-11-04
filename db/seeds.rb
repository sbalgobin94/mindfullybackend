# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sam = User.create(name: "Samantha Balgobin", username: "sbalgobin94", password_digest: "abc123")

josh = User.create(name: "Joshua Itwaru", username: "jitwaru", password_digest: "abc123")

arrayOfMoods = [
    {
        name: "Happy"
    }, 
    {
        name: "Sad"
    },
    {
        name: "Anxious"
    },
    {
        name: "Tired"
    },
    {
        name: "Excited"
    }

]

Mood.create(arrayOfMoods)

5.times do
    Journal.create(date: "11/03/20", user: User.all.sample, content: Faker::Lorem.paragraph)
end

5.times do 
    Log.create(user: User.all.sample, date: "11/03/20", mood: Mood.all.sample)
end
    
puts "Done seeding!"