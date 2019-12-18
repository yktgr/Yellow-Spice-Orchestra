class Shop < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  has_many :recipes, dependent: :destroy, inverse_of: :shop
  belongs_to :user
  accepts_nested_attributes_for :recipes, allow_destroy: true
  validates :name, presence: true
  validates :address, presence: true
end
