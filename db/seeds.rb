# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{ username: 'JoeyAtiba', first_name: 'Joey', last_name: 'Atiba', email: 'joey.atiba@gmail.com', password_digest: '344567786543', category: 'photographer', bio: 'sharper than a yellow number 2, I doesnt what I do, and if you didnt know now you knew', contact_info: '1(800)hope-this-works' }
	
	])


