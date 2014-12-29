# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{ username: 'JoeyAtiba', first_name: 'Joey', last_name: 'Atiba', email: 'joey.atiba@gmail.com', password: 'yeee', password_digest: '23fi345353vvr5hj4t35sdf', password_hash: '23fi345353vvr5hj4t35sdf', category: 'photographer', bio: 'sharper than a yellow number 2', contact_info: '1(800)hope-this-works' }
	
	])


