require_relative 'secret_number' 
require_relative 'game'
require_relative 'player'

# Greeting
puts "YOU - Hello and welcome to the Secret Number Game!"
puts "(This game was created by Dabney)"
puts

# Getting the player's name
puts "What is your name, ninja?"
name = gets.strip.capitalize

# Store player's name
player = Player.new(name)
player.name

# Connect to Game Class
round = Game.new(player)
round.player

# Goodbye!
puts "Game over. You didn't correctly guess the number. It was #{number}, duh."
