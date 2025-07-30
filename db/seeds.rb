# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

  
  Player.find_or_create_by!(name: "Jamel",     club: "NCI Boxing")
  Player.find_or_create_by!(name: "Giovanni",     club: "NCI Boxing")
  Player.find_or_create_by!(name: "Mohammed Ali",     club: "NCI Boxing")

Match.find_or_create_by!(
  player_a_id: Player.find_by(name: "Jamel").id,
  player_b_id: Player.find_by(name: "Giovanni").id,
  winner_id:   Player.find_by(name: "Jamel").id,
  round:    "1"
)

puts "Seeded #{Player.count} players and #{Match.count} match(es)."