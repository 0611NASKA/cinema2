class Movie < ApplicationRecord
  has_many :schedules, dependent: :destroy
  has_one_attached :movie_picture
  attribute :new_movie_picture

  class << self
    def search(query)
      rel = order("id")
      if query.present?
        rel = rel.where("title LIKE ?","%#{query}%")
      end
      rel
    end
  end

  before_save do
    if new_movie_picture
      self.movie_picture = new_profile_picture
    end
  end
end
