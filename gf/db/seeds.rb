# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Bess', email: 'elalsh22@brandeis.edu', password: '12345678', admin: true)
User.create(name: 'Amy', email: 'ashein@brandeis.edu', password: '12345678', admin: true)
User.create(name: 'S1', email: 'ealshvang@brandeis.edu', password: '12345678', admin: false)