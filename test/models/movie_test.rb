require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "should not save movie without name and thumbnail_url" do
    movie = Movie.new
    assert_not movie.save
  end

  test "should not save movie without thumbnail_url" do
    movie = Movie.new(name: "movie1")
    assert_not movie.save
  end

  test "should not save movie without name" do
    movie = Movie.new(thumbnail_url: "https://movie1url")
    assert_not movie.save
  end

  test "should save with movie name and thumbnail_url" do
    movie = Movie.new(name: "movie1", thumbnail_url: "https://movie1url")
    assert movie.save
  end
end
