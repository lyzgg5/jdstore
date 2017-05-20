# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "lyzgg5@gmail.com"   #改為自己的email
u.password = "123456"          #最少要六碼
u.password_confirmation = "123456"  #最少要六碼
u.is_admin = false
u.save
# Initialize Admin User
 if User.find_by(email: "admin@test.com").nil?
   u = User.new
   u.email = "admin@test.com"           # 可以改成自己的 email
   u.password = "123456"                # 最少要六码
   u.password_confirmation = "123456"   # 最少要六码
   u.is_admin = true
   u.save
   puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
 else
   puts "Admin 已经建立过了，脚本跳过该步骤。"
 end

#Initialize Product
# Product.create!(title: "QC-88",
#                 description: "小熊"，
#                 quantity: 20,
#                 price: 800,
#                 image: open("http://img.kingstone.com.tw/cvlife/images/product/20050/2005050108650/2005050108650Abs1.JPG")
#                 )
# Product.create!(title: "sony",
#                 description: "藍芽音響"，
#                 quantity: 5,
#                 price: 2800,
#                 image: open("https://images-cn.ssl-images-amazon.com/images/I/41bVSMLUllL._AC_UL320_SR320,320_.jpg")
#                 )
