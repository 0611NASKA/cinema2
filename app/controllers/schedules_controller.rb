class SchedulesController < ApplicationController

  def show
    @schedules = Schedule.where(theater_id: params[:id], movie_id: params[:id])
    @schedules.visible
    @movie = Movie.find(params[:id])
  end

  def search
    @schedules = Schedule.search(params[:d]).visible
    @movie = Movie.find(params[:id])
    render "show"
  end
end
