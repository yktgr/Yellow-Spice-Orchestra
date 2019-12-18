class User < ApplicationRecord
  validates :name, presence: true ,length: { maximum:255 }
  validates :email, presence: true ,length: { maximum:255 }
  has_many :recipes, dependent: :destroy, inverse_of: :user
  has_many :shops, dependent: :destroy, inverse_of: :user
  mount_uploader :picture, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recipe_likes, dependent: :destroy, inverse_of: :user
  has_many :comments, dependent: :destroy, inverse_of: :user
end
