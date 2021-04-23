puts 'Seeding shows...'

MOVIE_IDS = Movie.pluck(:id)
SCREEN_IDS = Screen.pluck(:id)

SHOWS = [{ screen_id: SCREEN_IDS[0], movie_id: MOVIE_IDS[0], base_price: 100, time_slot: 0 },
         { screen_id: SCREEN_IDS[0], movie_id: MOVIE_IDS[0], base_price: 100, time_slot: 2 },
         { screen_id: SCREEN_IDS[1], movie_id: MOVIE_IDS[1], base_price: 150, time_slot: 0 },
         { screen_id: SCREEN_IDS[1], movie_id: MOVIE_IDS[1], base_price: 150, time_slot: 2 },
         { screen_id: SCREEN_IDS[2], movie_id: MOVIE_IDS[2], base_price: 70, time_slot: 0 },
         { screen_id: SCREEN_IDS[2], movie_id: MOVIE_IDS[2], base_price: 70, time_slot: 2 },
         { screen_id: SCREEN_IDS[3], movie_id: MOVIE_IDS[3], base_price: 200, time_slot: 0 },
         { screen_id: SCREEN_IDS[3], movie_id: MOVIE_IDS[3], base_price: 200, time_slot: 2 },
         { screen_id: SCREEN_IDS[0], movie_id: MOVIE_IDS[4], base_price: 90, time_slot: 1 },
         { screen_id: SCREEN_IDS[0], movie_id: MOVIE_IDS[4], base_price: 90, time_slot: 3 },
         { screen_id: SCREEN_IDS[1], movie_id: MOVIE_IDS[5], base_price: 100, time_slot: 1 },
         { screen_id: SCREEN_IDS[1], movie_id: MOVIE_IDS[5], base_price: 100, time_slot: 3 },
         { screen_id: SCREEN_IDS[2], movie_id: MOVIE_IDS[6], base_price: 120, time_slot: 1 },
         { screen_id: SCREEN_IDS[2], movie_id: MOVIE_IDS[6], base_price: 120, time_slot: 3 },
         { screen_id: SCREEN_IDS[3], movie_id: MOVIE_IDS[7], base_price: 180, time_slot: 1 },
         { screen_id: SCREEN_IDS[3], movie_id: MOVIE_IDS[7], base_price: 180, time_slot: 3 }].freeze

SHOW_DATES = [ Date.today, Date.tomorrow]

SHOWS.each do |hash|
  SHOW_DATES.each do |show_date|
    Show.find_or_create_by(hash.merge(show_date: show_date))
  end
end
