require 'faker'

Tweet.delete_all
User.delete_all


3.times do |i|
  i = User.create username: "#{Faker::Internet.user_name}", photo: "#{Faker::Avatar.image(i+1, "300x300")}", password: "12345678"
  Tweet.create user_id: i.id, body: "#{Faker::ChuckNorris.fact}"

end


maaz = User.create! username: "maaz", password: "12345678", photo:"https://pbs.twimg.com/profile_images/590428304433225729/-7MkD7Cb.jpg"
Tweet.create! user: maaz, body: "Test", user_id: maaz.id
Tweet.create! user: maaz, body: "testtestetest", user_id: maaz.id
Tweet.create! user: maaz, body: "Tessssssssssssst", user_id: maaz.id
