# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Zak', email: 'zkolar@brandeis.edu', password: '12345678', admin: true)
User.create(name: 'Student', email: 'student@brandeis.edu', password: '12345678', admin: false)
User.create(name: 'Maria', email: 'maltebar@brandeis.edu', password: '12345678', admin: true)