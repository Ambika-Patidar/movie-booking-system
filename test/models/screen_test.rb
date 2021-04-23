require 'test_helper'

class ScreenTest < ActiveSupport::TestCase
  test "should not save screen without name" do
    screen = Screen.new
    assert_not screen.save
  end

  test "should save screen with name" do
    screen = Screen.new(name: "screen-1")
    assert screen.save
  end
end
