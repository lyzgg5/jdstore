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
u.is_admin = true
u.save


#Initialize Product
Product.create!(title: "QC-88", 
                description: "小熊"，
                price: 800,
                quantity: 20,
                image: open("http://img.kingstone.com.tw/cvlife/images/product/20050/2005050108650/2005050108650Abs1.JPG")
                )
Product.create!(title: "sony",
                description: "藍芽音響"，
                price: 2800,
                quantity: 5,
                image: open("https://www.moneydj.com/z/sjn/jpg/GetNewsRptjpg.djjpg?a=158693")
                )
