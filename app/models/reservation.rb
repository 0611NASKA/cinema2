class Reservation < ApplicationRecord
  belongs_to :member, class_name: "Member", foreign_key: "member_id"
  belongs_to :schedule, class_name: "Schedule", foreign_key: "schedule_id"
  has_many :reservation_details, dependent: :destroy
end
