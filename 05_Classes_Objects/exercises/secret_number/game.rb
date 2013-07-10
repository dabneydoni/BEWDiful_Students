require_relative 'secret_number'
require_relative 'player'

class Game
	puts "Welcome to the secret number game!"
	puts "Ninja #{player_name}, here are your directions:"
	puts " You must guess a number between one and ten."
	puts " BUT you will only have three tries to get it right."
	puts

	puts "Let's begin, #{player_name}!"

	secret_number = rand(1..10)
	guesses_left = 3
	
	def try_again(guesses_left, next_guess)
  		puts "Sorry, that's not it..."
  		puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
  		puts "Guess #{next_guess}!" if guesses_left > 0
  		puts
	end

	while guesses_left > 0
  		puts "What's your guess?"
  		guess = gets.strip.to_i

  	if guess == secret_number
    	puts "YOU WON!"
   		exit
  	elsif guess > secret_number
    	guesses_left -= 1
    	try_again(guesses_left, "lower")
  	elsif guess < secret_number
    	guesses_left -= 1
    	try_again(guesses_left, "higher")
  	end
	end
end
