class TopController < ApplicationController
  def index
    @movies = Movie.visible.order("id").limit(5)
  end
end
