class BookingsController < ApplicationController
  before_action :set_booking, only: %I[ show pdf]
  before_action :set_bookings, only: %I[ index search ]

  def index  
    set_pagination
    render :report if current_user.has_role?(:admin)
  end

  def show; end

  def pdf 
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string('show.html.erb', layout: false))
    send_data(pdf,          
      filename: 'ticket.pdf',  
      type: 'application/pdf',                   
      disposition: 'attachment') 
  end

  def search
    @bookings = @bookings.joins(:show).where(prepare_query)
    filter_bookings_by_date
    set_pagination
  end


  def filter_bookings_by_date
    @bookings = @bookings.filter_from_date(params[:start_date].to_date) if params[:start_date].present? && !params[:end_date].present?
    @bookings = @bookings.filter_to_date(params[:end_date].to_date) if params[:end_date].present? && !params[:start_date].present?
    @bookings = @bookings.filter_between_date(params[:start_date].to_date, params[:end_date].to_date) if params[:start_date].present? && params[:end_date].present?
  end

  def prepare_query
    query = []
    query << "movie_id = #{params[:movie]}" if params[:movie].present?
    query << "screen_id = #{params[:screen]}" if params[:screen].present?
    query << "time_slot = '#{params[:time_slot]}'" if params[:time_slot].present?
    query << "booking_id = '#{params[:booking_id]}'" if params[:booking_id].present?

    return query[0] if query.count.eql?(1)
    query.join(" AND ")
  end

  def set_pagination
    @bookings = @bookings.order_by_recent.paginate(page: params[:page], per_page: 10)
  end

  private
  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end

  def set_bookings
    return @bookings = current_user.bookings if current_user.has_role?(:customer)
    @bookings = Booking.all
    set_filters
  end

  def set_filters
    @movies = Movie.active.order_by_recent.map{|movie| [movie.name, movie.id]}
    @screens = Screen.all.map{|screen| [screen.name, screen.id]}
    @time_slots = Show.time_slots.map{|key, value| [key,value]}
  end
end
