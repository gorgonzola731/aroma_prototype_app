class Post < ApplicationRecord
  validates :title, presence: true,
                   length: {maximum: 50}
  belongs_to :user
  mount_uploader :image,  ImageUploader
end
