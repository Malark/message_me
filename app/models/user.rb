class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..15 }
  has_secure_password
end