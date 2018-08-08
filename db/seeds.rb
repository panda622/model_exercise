# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.delete_all
Text.delete_all
Picture.delete_all
10.times do |a|
  article = Article.create!(title: Faker::Artist.name)
  5.times do |x|
    text = Text.create!(article: article, headline: Faker::Company.name, content: Faker::OnePiece.quote)
    picture = Picture.create!(article: article, headline: Faker::Company.name)
    picture.picture_from_url Faker::Avatar.image 
    picture.save
  end
end
