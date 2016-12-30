class User < ApplicationRecord

  has_secure_password

  has_many :events
  has_many :messages
  has_many :chat_rooms, through: :messages

  validates :email, uniqueness: { case_sensitive: false }

end
