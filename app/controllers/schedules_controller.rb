class SchedulesController < ApplicationController

  def show
    @schedules = Schedule.where(theater_id: params[:id], movie_id: params[:id])
    @movie = Movie.find(params[:id])
  end
end
