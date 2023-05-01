class ReservationsController < ApplicationController
  before_action :login_required

  def step0
  end

  def step1
    @reservation = Reservation.find(params[:reservation_id])
    @quantity = params[:quantity].to_h
    @quantity.each do |type, num|  # 明細を作成
      for i in (0...num.to_i)
        @reservation.reservation_details.create(ticket_id: type.to_i, seat: nil)
      end
    end
  end

  def step2
    @member = current_member
    @reservation = Reservation.find(params[:reservation_id])
    seats = params[:seats].keys.map(&:to_s)
    @reservation.reservation_details.each do |d|
      d.update(seat: seats.shift)
    end
  end

  def step3
    @reservation = Reservation.find(params[:reservation_id])
    total = @reservation.reservation_details.map{|d| d.ticket.total}.sum
    @reservation.assign_attributes(total_sheets: total)
    @reservation.save
  end

  def create
    @reservation = Reservation.new(
      member_id: current_member.id, schedule_id: params[:schedule_id], confirm_time: DateTime.current, status: 0
    )
    @reservation.save
    render "step0"
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.assign_attributes(status: 1)
    @reservation.save
    redirect_to :account
  end
end
