class Comment < ApplicationRecord
  validates :content, presence: true ,length: { maximum:100 }
  belongs_to :user, inverse_of: :comments
  belongs_to :recipe, inverse_of: :comments
end
