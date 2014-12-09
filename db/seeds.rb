# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times {
  Page.create(title: Faker::Lorem.paragraph(2), content: Faker::Lorem.paragraph(10))
  Tutorial.create(title: Faker::Lorem.paragraph(2), content: Faker::Lorem.paragraph(10))
}