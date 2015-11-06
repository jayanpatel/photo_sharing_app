
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.find_by(id: 3)
user2 = User.find_by(id: 4)

user1.posts.create(caption: "I am tired", visibility: true)
user1.posts.create(caption: "Hello")
user2.posts.create(caption: "GA is awesome!", visibility: true)