# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 50.times do |n|
#   name = Faker::Games::Pokemon.name
#   email = Faker::Internet.email
#   password = "password"
#   User.create!(name: name,
#                email: email,
#                password: password,
#                password_confirmation: password,
#                )
# end
# # #
# User.create!(name: "user1",
#              email: "user1@user.com",
#              password: "password",
#              password_confirmation: "password",
#              )
#
#  User.create!(name: "user2",
#               email: "user2@user.com",
#               password: "password",
#               password_confirmation: "password",
#               )
# User.create!(name: "user3",
#              email: "user3@user.com",
#              password: "password",
#              password_confirmation: "password",
#              )
#
#  User.create!(name: "user4",
#               email: "user4@user.com",
#               password: "password",
#               password_confirmation: "password",
#               )
#
# Shop.create(name: "Aカレー",
#              address: "千葉県",
#              user_id: 1)
# Shop.create(name: "Bカレー",
#             address: "東京都",
#             user_id: 2
# )
# Shop.create(name: "Cカレー",
#             address: "東京都",
#             user_id: 2
# )
# Shop.create(name: "Dカレー",
#             address: "東京都",
#             user_id: 3
# )
# Shop.create(name: "Eカレー",
#              address: "東京都",
#              user_id: 4
# )

Recipe.create(id:1,
  name: "チキンカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 0,
  shop_id: 1,
  user_id: 2
)

Material.create{
name:"玉ねぎ",
amount:"大２個",
recipe_id: 1
 }
 Material.create{
 name:"鶏肉",
 amount:"２００g",
 recipe_id: 1
  }


Recipe.create(id:2,
  name: "バターチキンカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 0,
  shop_id: 3,
  user_id: 4
)

Recipe.create(id:3,
  name: "ベジカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 0,
  shop_id: 1,
  user_id: 2
)


Recipe.create(id:4,
  name: "チキンカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 0,
  shop_id: 1,
  user_id: 2
)

Recipe.create(id:5,
  name: "バターチキンカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 0,
  shop_id: 3,
  user_id: 4
)

Recipe.create(id:4,
  name: "ベジカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: 4,
  shop_id: 4,
  user_id: 4
)
