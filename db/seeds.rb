# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "lyzgg5@gmail.com"   #改為自己的email
u.password = "000000"          #最少要六碼
u.password_confirmation = "000000"  #最少要六碼
u.is_admin = true
u.save
