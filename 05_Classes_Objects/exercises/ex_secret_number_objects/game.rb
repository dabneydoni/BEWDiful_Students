class Game

	def initialize(player)
		@player = player.name
	end

	puts "Ninja #{@player}, here are your directions:"
	puts "You must guess a number between one and ten."
	puts "BUT you will only have three tries to get it right."
	puts

	puts "Let's begin, #{@player}!"

	number = Secret_Number.new
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

  	if guess == number
    	puts "YOU WON!"
   		exit
  	elsif guess > number
    	guesses_left -= 1
    	try_again(guesses_left, "lower")
  	elsif guess < number
    	guesses_left -= 1
    	try_again(guesses_left, "higher")
  	end
	end
end
