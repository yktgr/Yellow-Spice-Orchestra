FactoryBot.define do
  factory :user do
    id {1}
    name { "user1" }
    email { "user1@user.com" }
    password { "password" }
      factory :user_second do
        id {2}
        name { "user2" }
        email { "user2@user.com" }
        password { "password" }
  end
end
end
