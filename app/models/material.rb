class Material < ApplicationRecord
  validates :name, presence: true ,length: { maximum:20 }
  validates :amount, presence: true ,length: { maximum:10}
  belongs_to :recipe, optional: true, inverse_of: :materials
end
