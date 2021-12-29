class Schedule < ApplicationRecord
  has_many :reservations
  belongs_to :movie, class_name: "Movie", foreign_key: "movie_id"
  belongs_to :theater, class_name: "Theater", foreign_key: "theater_id"
  belongs_to :screen, class_name: "Screen", foreign_key: "screen_id"
end
