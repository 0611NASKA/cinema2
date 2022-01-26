class Admin::MoviesController < Admin::Base
  def index
    @movies = Movie.order(released_at: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
    @theaters = @movie.schedules.select(:theater_id).distinct
  end

  def new
    @movie = Movie.new(released_at: Date.today)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      redirect_to [:admin, @movie], notice:"作品を追加しました"
    else
      render "new"
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.assign_attributes(params[:movie])
    if @movie.save
      redirect_to [:admin, @movie], notice: "作品情報を更新しました"
    else
      render "edit"
    end
  end
end
