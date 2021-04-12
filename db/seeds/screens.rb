puts "Seeding screens"

1.upto(3) { |screen| Screen.find_or_create_by!(name: "Audi-#{screen}") }
