FactoryBot.define do
  factory :flow1 do
    content{"玉ねぎを炒める"}
    recipe_id{1}
    factory :flow2 do
      content{"鶏肉を炒める"}
      recipe_id{1}
      factory :flow3 do
        content{"スパイスを炒める"}
        recipe_id{1}
        factory :flow4 do
          content{"１，２，３，を投入し煮込む"}
          recipe_id{1}
          factory :flow5 do
            content{"玉ねぎを炒める"}
            recipe_id{2}
            factory :flow6 do
              content{"豚肉を炒める"}
              recipe_id{2}
              factory :flow7 do
                content{"スパイスを炒める"}
                recipe_id{2}
                factory :flow8 do
                  content{"１，２，３，を投入し煮込む"}
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
