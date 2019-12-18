FactoryBot.define do
  factory :material1 do
    name{"クミン"}
    amount{"小さじ１"}
    recipe_id{1}
    factory :material2 do
      name{"コリアンダー"}
      amount{"小さじ１"}
      recipe_id{1}
      factory :material3 do
        name{"ターメリック"}
        amount{"小さじ１"}
        recipe_id{1}
        factory :material4 do
          name{"玉ねぎ"}
          amount{"1個"}
          recipe_id{1}
          factory :material5 do
            name{"トマト"}
            amount{"1個"}
            recipe_id{1}
            factory :material6 do
              name{"鶏肉"}
              amount{"300g"}
              recipe_id{1}
              factory :material7 do
                name{"クミン"}
                amount{"小さじ１"}
                recipe_id{2}
                factory :material8 do
                  name{"コリアンダー"}
                  amount{"小さじ１"}
                  recipe_id{2}
                  factory :material9 do
                    name{"ターメリック"}
                    amount{"小さじ１"}
                    recipe_id{2}
                    factory :material10 do
                      name{"玉ねぎ"}
                      amount{"1個"}
                      recipe_id{2}
                      factory :material11 do
                        name{"トマト"}
                        amount{"1個"}
                        recipe_id{2}
                        factory :material12 do
                          name{"豚肉"}
                          amount{"300g"}
                          recipe_id{2}
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
