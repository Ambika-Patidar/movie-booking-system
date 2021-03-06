# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require Rails.root.join('db/seeds/movies')
require Rails.root.join('db/seeds/screens')
require Rails.root.join('db/seeds/shows')
require Rails.root.join('db/seeds/users')
require Rails.root.join('db/seeds/screen_layouts')
