class Admin::ReservationsController < Admin::Base

  def index
    @reservations = Reservation.all
  end

  def search
    @reservations = Reservation.search(params[:q], params[:order])
    render "index"
  end
end
