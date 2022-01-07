class MoviesController < ApplicationController
  def index
    @movies = Movie.order("id")
  end

  def search
    @movies = Movie.search(params[:q])
    render "index"
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
