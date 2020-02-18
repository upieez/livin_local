# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


outdoor = Tag.create(:name => "outdoor")
beach = Tag.create(:name => "beach")
park = Tag.create(:name => "park")
kid_friendly = Tag.create(:name => "kid_friendly")
pet_friendly = Tag.create(:name => "pet_friendly")


