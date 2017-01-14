class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
