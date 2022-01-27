class ReservationDetail < ApplicationRecord
  belongs_to :reservation
  belongs_to :ticket
end
