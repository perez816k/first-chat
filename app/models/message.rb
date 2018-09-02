class Message < ApplicationRecord
    belongs_to :room
    validates :content, presence: true
    validates :user, presence: true
end
