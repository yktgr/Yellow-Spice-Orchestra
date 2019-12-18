class Recipe < ApplicationRecord
  belongs_to :user, optional: true, inverse_of: :recipes
  belongs_to :shop, optional: true, inverse_of: :recipes
  validates :shop_id, presence: true
  enum curry_type: {chicken: 0, pork: 1, beef: 2, fish: 3, vege: 4, other: 5}
  validates :name, presence: true ,length: { maximum:30 }
  validates :content, presence: true ,length: { maximum:100 }
  validates :curry_type, presence: true
  scope :updated, -> {order(updated_at: :desc)}
  has_many :recipe_likes, dependent: :destroy
  has_many :likes_users, through: :recipe_likes, source: :user, dependent: :destroy
  has_many :comments, dependent: :destroy, inverse_of: :recipe
  has_many :materials, dependent: :destroy, inverse_of: :recipe
  accepts_nested_attributes_for :materials, allow_destroy: true
  has_many :flows, dependent: :destroy, inverse_of: :recipe
  accepts_nested_attributes_for :flows, allow_destroy: true
  mount_uploader :picture, ImageUploader
end
