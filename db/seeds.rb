# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##Create a user
users = {
	bill_credentials: {first_name:'bill', last_name:'gates', email:'bill@ms.com', password:'123'},
	linus_credentials: {first_name:'linus', last_name:'torvalds', email:'linus@init.ram', password:'123'},
	bob_credentials: {first_name:'bob', last_name:'billy', email:'cake@init.ramfs', password:'123'}
	}

users.each do |name, user_creds|
	new_user = User.new(user_creds)
	new_user.save
end