class Reservation < ApplicationRecord
  belongs_to :member
  belongs_to :schedule
  has_many :reservation_details, dependent: :destroy

  class << self
    def search(query, order)
      rel = all.order(order)
      if query.present?
        mids = Movie.where("title LIKE ?", "%#{query}%").ids
        sids = Schedule.where(movie_id: mids).ids
        rel.where!(schedule_id: sids)
      end
      rel
    end
  end
end
