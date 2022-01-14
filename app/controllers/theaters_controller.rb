class TheatersController < ApplicationController

  def index
    @theaters = Theater.order("id")
  end

  def show
    @theaters = Theater.find(params[:id])
  end
end
