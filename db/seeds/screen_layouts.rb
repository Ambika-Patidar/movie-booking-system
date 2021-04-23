# Create screens

puts 'Seeding screen layouts...'

Screen.all.each do |screen|
  ('A'..'O').each do |row|
    (1..20).each do |column|
      category = row < 'I' ? 1 : 0
      screen.screen_layouts.find_or_create_by!(row: row, seat_number: column, category: category)
    end
  end
end

