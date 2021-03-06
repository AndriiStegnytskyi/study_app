# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.times do |n|
password = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
User.create!(password: password,
email: email)
end

user = User.first
1.times do
content = Faker::Lorem.sentence(5)
user.blogs.create!(content: content)
end