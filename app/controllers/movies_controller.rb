class MoviesController < ApplicationController
  def index
    @movies = Movie.order(released_at: :asc).page(params[:page]).per(10)
    @movies = @movies.visible
  end

  def search
    @movies = Movie.search(params[:q]).page(params[:page]).per(10)
    render "index"
  end

  def show
    @movie = Movie.find(params[:id])
    @theaters = @movie.schedules.select(:theater_id).distinct
  end
end
