FactoryBot.define do
  factory :shop do
    id{1}
    name { 'Aカレー' }
    address { '東京都' }
    user_id {1}

    factory :shop_second do
      id{2}
      name { 'Bカレー' }
      address { '千葉県' }
      user_id {2}

    end
  end
end
