FactoryBot.define do
  factory :recipe do
    id{1}
    name {"チキンカレー"}
    content{"Aカレー店のレシピをコピーしました。"}
    curry_type{0}
    shop_id{1}
    user_id{1}

    factory :recipe_second do
      id{2}
      name {"ポークカレー"}
      content{"Bカレー店のレシピをコピーしました。"}
      curry_type{1}
      shop_id{2}
      user_id{2}
      factory :recipe_third do
        id{4}
        name {"ポークカレー"}
        content{"Bカレー店のレシピをコピーしました。"}
        curry_type{1}
        shop_id{2}
        user_id{1}

      end
    end
  end
end
