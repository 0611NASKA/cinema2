class Ticket < ApplicationRecord
  has_many :reservation_details
end
