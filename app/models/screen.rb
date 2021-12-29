class Screen < ApplicationRecord
  has_many :schedules
  belongs_to :theater, class_name: "Theater", foreign_key: "theater_id"
  has_many :seats
end
