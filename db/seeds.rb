# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!(email: 'admin@test.com', password: '123456', password_confirmation: '123456')

# 5.times do
#     Course.create!([{
#         title: Faker::Educator.course_name,
#         description: Faker::TvShows::GameOfThrones.quote,
#         user_id: User.last.id
#     }])
# end

5.times do
    Course.create!([{
        title: Faker::Educator.course_name,
        description: Faker::TvShows::GameOfThrones.quote,
        user_id: User.last.id,
        short_description: Faker::Quote.famous_last_words,
        language: Faker::ProgrammingLanguage.name,
        level: 'Beginner',
        price: Faker::Number.between(from: 20, to: 150)
    }])
end

5.times do
    Article.create!([{
        title: Faker::Creature::Animal.name,
        description: Faker::TvShows::FamilyGuy.name,
        user_id: User.first.id
        # article.image.attach(
        #     io: File.open(Rails.root.join('app/assets/images/IMG0962.jpg')),
        #     filename: 'IMG0962.jpg'
        #     )
    }])
end
    

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])