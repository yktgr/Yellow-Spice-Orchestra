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
User.create!(name: "user1",
             email: "user1@user.com",
             password: "password",
             password_confirmation: "password",
             )

 User.create!(name: "user2",
              email: "user2@user.com",
              password: "password",
              password_confirmation: "password",
              )
User.create!(name: "user3",
             email: "user3@user.com",
             password: "password",
             password_confirmation: "password",
             )

 User.create!(name: "user4",
              email: "user4@user.com",
              password: "password",
              password_confirmation: "password",
              )

Shop.create(name: "Aカレー",
             address: "千葉県",
             user_id: 1)
Shop.create(name: "Bカレー",
            address: "東京都",
            user_id: 2
)
Shop.create(name: "Cカレー",
            address: "東京都",
            user_id: 2
)
Shop.create(name: "Dカレー",
            address: "東京都",
            user_id: 3
)
Shop.create(name: "Eカレー",
             address: "東京都",
             user_id: 4
)
3.times do |i|
i =  i + 1
r = Recipe.create(
  name: "チキンカレー",
  content: "この店の人気メニューをコピーしました。",
  curry_type: i,
  shop_id: i,
  user_id: 2
)
r.materials.create(
  name: "玉ねぎ",
  amount: "一個",
)

r.materials.create(
  name: "トマト",
  amount: "一個",
)

r.materials.create(
  name: "ターメリック",
  amount: "小さじ半分"
)
r.materials.create(
  name: "コリアンダー",
  amount: "小さじ半分"
)

r.materials.create(
  name: "クミン",
  amount: "小さじ半分"
)

r.flows.create(
  content: "玉ねぎを炒める"
)
r.flows.create(
  content: "#{:curry_type[i] }を炒める"
)

r.flows.create(
  content: "スパイスを炒める"
)

r.flows.create(
  content: "１，２を投入し煮込む"
)
end
