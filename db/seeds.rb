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

 # Provide a default URL as a default if there hasn't been a file uploaded:
 Product.create!(title: "QC-35",
    description: "耳机",
    price: 2800,
    quantity: 5,
    image: open("https://drive.google.com/file/d/0B6bccYkYyU2-dXJRSThJMi1sZUk/view?usp=sharing")
    )

  Product.create!(title: "Iphone7",
    description: "手机",
    price: 5000,
    quantity: 5,
    image: open("https://drive.google.com/file/d/0B6bccYkYyU2-ZGF0cjcyeFlUaXM/view?usp=sharing")
    )

  Product.create!(title: "Cherry Keyboard",
    description: "G80-3000键盘",
    price: 2800,
    quantity: 5,
    image: open("https://drive.google.com/file/d/0B6bccYkYyU2-bTU0eV9yeFpIZFU/view?usp=sharing")
    )
