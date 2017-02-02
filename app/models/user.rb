class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :likes

  def already_liked? (post)
    self.likes.find_by(post_id: post.id).present?
  end
end
