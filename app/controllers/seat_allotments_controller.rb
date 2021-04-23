class SeatAllotmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_screen_layout
  
  def create
    ActiveRecord::Base.transaction do
      @booking = current_user.bookings.create(booking_params)
      @screen_layouts.each do |screen_layout|
        screen_layout.seat_allotments.create(seat_allotments_params.merge(booking_id: @booking.id, status: :booked) )
      end
    end
  rescue StandardError => e
    @error = "Something went wrong"
  end

  private
  def set_screen_layout
    @screen_layouts = ScreenLayout.where(id: params[:screen_layout_ids])
  end

  def booking_params
    params.permit(:show_id, :price)
  end

  def seat_allotments_params
    params.permit(:show_id)
  end
end
