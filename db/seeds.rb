# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create!(name: "web client", redirect_url: "", scope: "")
    Doorkeeper::Application.create!(name: "ios client", redirect_url: "", scope: "")
    Doorkeeper::Application.create!(name: "android client", redirect_url: "", scope: "")
    Doorkeeper::Application.create!(name: "react", redirect_url: "", scope: "")

end

User.first_or_create(email: 'ali@test.com',
    password: 'alijan',
    password_confirmation: 'alijan',
    role: User.roles[:admin])
