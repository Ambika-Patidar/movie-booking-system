#Create Admin user

puts 'Seeding users...'

user = User.find_or_initialize_by(email: 'admin@yopmail.com')
user.password = 'admin@123'
user.add_role :admin
user.save
