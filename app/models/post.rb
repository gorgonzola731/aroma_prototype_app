class Post < ApplicationRecord
  validates :title, presence: true,length: {maximum: 50}
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy 
  mount_uploader :image,  ImageUploader
end
