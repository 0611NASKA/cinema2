class Ticket < ApplicationRecord
  has_many :reservation_details
  self.inheritance_column = :_type_disabled
end
