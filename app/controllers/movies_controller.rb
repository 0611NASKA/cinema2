class MoviesController < ApplicationController
  def index
    @movies = Movie.order("id").page(params[:page]).per(10)
  end

  def search
    @movies = Movie.search(params[:q]).page(params[:page]).per(10)
    render "index"
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
