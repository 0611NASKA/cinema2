class Admin::SchedulesController < Admin::Base

  def index
    @schedules = Schedule.order(id: :desc)
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    if @schedule.save
      redirect_to action: :index, notice:"作品を追加しました"
    else
      render "new"
    end
  end
end
