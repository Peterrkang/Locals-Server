class Event < ApplicationRecord

  has_one :chat_room
  belongs_to :user

  validates :title, :description, :address, :lng, :lat, :user_id


end
