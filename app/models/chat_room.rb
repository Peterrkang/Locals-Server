class ChatRoom < ApplicationRecord
  belongs_to :event
  has_many :messages
  has_many :users, through: :messages

  validates :user_id, :event_id, :title

end
