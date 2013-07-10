require_relative 'secret_number'
require_relative 'game'
require_relative 'player'

# Greeting
puts "YOU - Hello and welcome to the Secret Number Game!"
puts "(This game was created by Dabney)"

# Getting the player's name
def player_name
	puts "What is your name, ninja?"
	name = gets.strip.capitalize

end
# Store player's name
player_name = Player.new

# Connect to Game Class
round = Game.new

# Goodbye!
puts "Game over. You didn't correctly guess the number. It was #{secret_number}, duh."
