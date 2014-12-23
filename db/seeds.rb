# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{ name: 'Joey Jet', category: "Photographer", bio: 'Canada, to the OC, to Mass, to Miami, to LA', contact_info: 'One-eight-hundred call me dot com'},
	{ name: 'Donatella Versace', category: "Fashion Designer", bio: 'Reggio Calabria, Italy to the World', contact_info: 'Versace-Versace-Versace@Versace.com'},
	{ name: 'Louis Vuitton', category: "Apparel and Accessories", bio: 'Paris, France to your shoulder, pocket, & the luggage compartment of your get', contact_info: 'LV@LV.com'}

	])

albums = Album.create([
	{ name: 'Deep House', description: "stroker ace", date: '7/4/1776'},
	{ name: 'Medusa Head', description: "Migos", date: '4/14/2014'},
	{ name: 'Elle Vee', description: "yeeeeee", date: '7/5,1779'}

	])

