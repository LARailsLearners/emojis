# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##Create a user


25.times do
	user_creds = {
		first_name: Faker::Name.first_name, 
		last_name: Faker::Name.last_name, 
		email: Faker::Internet.email,
		password: Faker::Internet.password(8) 
	}

	new_user = User.new(user_creds)
	new_user.save
end

# 25.times do
# 	new_emoji=Emoji.new
# 	emoji.emoji = Emoji.generate_emoji
# 	emoji.save
# end