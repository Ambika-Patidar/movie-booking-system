require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  setup do
    @screen = Screen.first
    @movie = Movie.first
  end

  test "should not save show without show_date and base price" do
    show = Show.new(screen: @screen, movie: @movie)
    assert_not show.save
  end

  test "should not save show without show_date" do
    show = Show.new(base_price: 1.0, screen: @screen, movie: @movie)
    assert_not show.save
  end

  test "should not save show without base price" do
    show = Show.new(show_date: '2021-05-30 00:50:50', screen: @screen, movie: @movie)
    assert_not show.save
  end

  test "should save show with base price and show_date" do
    show = Show.new(show_date: '2021-05-30 00:50:50', base_price: 1.0, screen: @screen, movie: @movie)
    assert show.save
  end  
end
