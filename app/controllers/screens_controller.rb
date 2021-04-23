class ScreensController < ApplicationController
  before_action :set_screen
  before_action :set_price
  
  def show
    @screen_layout = @screen.screen_layouts.show_seat_allotments(@show.id)
  end

  private
  def set_screen
    @screen = Screen.find_by(id: params[:id])
    @show = Show.find_by(id: params[:show_id])
  end

  def set_price
    @price = OpenStruct.new({
      upper: Constants::UPPER_SEATS_COEFFICIENT * @show.base_price,
      lower: Constants::LOWER_SEATS_COEFFICIENT * @show.base_price
    })
  end
end
