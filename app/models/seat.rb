class Seat < ApplicationRecord
  has_many :reservation_details
  belongs_to :screen, class_name: "Screen", foreign_key: "screen_id"
end
