class Flow < ApplicationRecord
  validates :content, presence: true ,length: { maximum:100 }
  belongs_to :recipe, optional: true, inverse_of: :flows
  mount_uploader :picture, ImageUploader
end
