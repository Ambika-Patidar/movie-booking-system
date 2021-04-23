require 'test_helper'

class SeatTest < ActiveSupport::TestCase
  test "should not save seat without name" do
    seat = Seat.new
    assert_not seat.save
  end

  test "should save seat with name" do
    seat = Seat.new(name: "seat-1")
    assert seat.save
  end
end
