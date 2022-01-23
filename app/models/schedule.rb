class Schedule < ApplicationRecord
  has_many :reservations
  belongs_to :movie
  belongs_to :theater
end
