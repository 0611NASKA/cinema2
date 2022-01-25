class Schedule < ApplicationRecord
  has_many :reservations
  belongs_to :movie
  belongs_to :theater

  class << self
    def search(query)
      rel = order("start_time")
      if query.present?
        rel = rel.where("screening_date LIKE ?", "%#{query}%")
      end
      rel
    end
  end
end
