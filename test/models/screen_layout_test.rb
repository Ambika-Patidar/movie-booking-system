require 'test_helper'

class ScreenLayoutTest < ActiveSupport::TestCase
  setup do
    @screen = Screen.first
    @seat = Seat.first
  end

  test "should not save screen layout without seat_number and row" do
    screen_layout = ScreenLayout.new(screen: @screen, seat: @seat)
    assert_not screen_layout.save
  end

  test "should not save screen layout without seat_number" do
    screen_layout = ScreenLayout.new(screen: @screen, seat: @seat, row: 'B')
    assert_not screen_layout.save
  end

  test "should not save screen layout without row" do
    screen_layout = ScreenLayout.new(screen: @screen, seat: @seat, seat_number: 2)
    assert_not screen_layout.save
  end

  test "should save screen layout with valid seat_number and row" do
    screen_layout = ScreenLayout.new(screen: @screen, seat: @seat, seat_number: 1, row: 'C')
    assert screen_layout.save
  end
end
