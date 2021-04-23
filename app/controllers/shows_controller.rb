class ShowsController < ApplicationController
  before_action :set_movie
  def index
    @shows = @movie.shows.group_by{|show| show.show_date}
  end

  def get_shows
    @movie_shows = @movie.shows.where(show_date: params[:date])
  end

  private
  def set_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
