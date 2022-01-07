class MoviesController < ApplicationController
  def index
    @movies = Movie.order("id")
  end

  def search
    @movies = Movie.search(params[:q])
    render "index"
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
