# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Account.create([
    { username: "john", first_name: "John", last_name: "Doe", email: "johndoe@example.com", password: "password" },
    { username: "josh", first_name: "Josh", last_name: "Toe", email: "joshtoe@example.com", password: "password" },
    { username: "joe", first_name: "Joe", last_name: "Boe", email: "joeboe@example.com", password: "password" },
])