# Game welcomes player.
puts "Welcome to the Secret Number Game"
puts "Dabney Donigan created this game."

puts "What is your name?"
player_name = gets
puts "Hi #{player_name}!"

puts "The game is to guess the secret number. You have three turns to guess it, and as a hint: it's between 1 and 10. Good luck!"
# Tell them the rules, saying they need to guess a number 1-10, and that they have three turns.

# 'Hard code' the secret number.
secret number = 2
# Ask the user for their guess.
puts "What is your first guess?"
guess = gets
if guess > 2
	puts "Oops, your guess is too large!"
if guess < 2
	puts "Oops, your guess is too small!"
	2.downto(1) do |guess|
		puts "You have #{guess} many guesses before the game is over, enter another number."
	puts "Oh no, you're out of guesses! Whoops, you lose. The secret number is 2!"
else
	puts "Congratulations, you've won the game!"