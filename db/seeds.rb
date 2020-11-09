# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mood.destroy_all
Mood.reset_pk_sequence
Log.destroy_all
Log.reset_pk_sequence

sam = User.create(name: "Samantha Balgobin", username: "sbalgobin94", password_digest: "abc123")

josh = User.create(name: "Joshua Itwaru", username: "jitwaru", password_digest: "abc123")

arrayOfMoods = [
        {
            name: "Horrible",
            img_url: "https://cdn0.iconfinder.com/data/icons/social-network-27/32/emoji_social_face_message_very_sad_reaction_sadness_unhappy-512.png",
            value: 1
        },

        {
        name: "Meh",
        img_url: "https://surveymonkey-assets.s3.amazonaws.com/survey/186519153/image_choice/8de55a61-cbf3-491c-9318-7640c856bb7f.png",
        value: 2
        },

        {
        name: "Good",
        img_url: "https://webstockreview.net/images/smiley-clipart-6.gif",
        value: 3
        },

        {name: "Awesome",
        img_url: "https://banner2.cleanpng.com/20180728/lyq/kisspng-computer-icons-emoticon-smiley-lol-icon-5b5cea95ae0720.5304560615328160217128.jpg",
        value: 4
        }

]
Mood.create(arrayOfMoods)

5.times do
    Journal.create(date: "November 9 2020", user: User.all.sample, content: Faker::Lorem.paragraph)
end

Log.create(user_id: 1, mood_id: 4, date: "November 1 2020")
Log.create(user_id: 1, mood_id: 3, date: "November 2 2020")
Log.create(user_id: 1, mood_id: 2, date: "November 3 2020")
Log.create(user_id: 1, mood_id: 1, date: "November 4 2020")
    
puts "Done seeding!"