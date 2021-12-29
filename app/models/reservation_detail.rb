class ReservationDetail < ApplicationRecord
  belongs_to :reservation, class_name: "Reservation", foreign_key: "reservation_id"
  belongs_to :ticket, class_name: "Ticket", foreign_key: "ticket_id"
  belongs_to :seat, class_name: "Seat", foreign_key: "seat_id"
end
