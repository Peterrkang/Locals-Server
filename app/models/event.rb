class Event < ApplicationRecord

  has_one :chat_room
  belongs_to :user

end
