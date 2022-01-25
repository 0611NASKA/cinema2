class SchedulesController < ApplicationController

  def show
    @schedules = Schedule.where(theater_id: params[:id], movie_id: params[:id])
    @movie = Movie.find(params[:id])
  end

  def search
    @schedules = Schedule.search(params[:q])
    render "show"
  end
end
