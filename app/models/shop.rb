class Shop < ApplicationRecord
  # validates :name
  # validates :address
  has_many :recipes, inverse_of: :shop
  belongs_to :user
  accepts_nested_attributes_for :recipes, allow_destroy: true
  validates :name, presence: true
  validates :address, presence: true
end
