class Schedule < ApplicationRecord
  has_many :reservations
  belongs_to :movie
  belongs_to :theater

  validates :movie_id, :theater_id, :screen_no, presence: true

  validate do
    movie = Movie.find(movie_id)
    if screening_date < movie.released_at || screening_date > movie.expired_at
      errors.add(:screening_date, "上映日は公開内日程にしてください")
    end
  end

  scope :visible, -> do
    now = Time.zone.parse("2000-01-01,#{Time.current.strftime("%H:%M")}")
      where("end_time >= ? OR end_time IS NULL", now)
  end

  class << self
    def search(date)
      rel = where(screening_date: date)
      rel
    end
  end
end
