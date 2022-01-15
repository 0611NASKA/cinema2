class TopController < ApplicationController
  def index
    @movies = Movie.order("id").limit(5)
  end
end
