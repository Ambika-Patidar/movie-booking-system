require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  setup do
    @user = User.first
    @show = Show.first
  end

  test "should not save bookings without price and booking id" do
    bookings = @user.bookings.new(show: @show)
    assert_not bookings.save
  end

  test "should not save bookings without price" do
    bookings = @user.bookings.new(booking_id: 'OI-1234', show: @show)
    assert_not bookings.save
  end

  test "should save bookings with price and booking id" do
    bookings = @user.bookings.new(price: 250, booking_id: 'OI-1234', show: @show)
    assert bookings.save
  end
end
