count = 99
	while count > 1
		puts "#{count} bottles of beer on the wall"
		puts "#{count} bottles of beer!"
		puts "You take one down and pass it around!"
		puts "#{count} bottles of beer on the wall!"
	count -= 1
	
	break if count < 1	
		puts "#{count} bottle of beer on the wall!"
		puts "#{count} bottle of beer!"
		puts "You take one down and pass it around!"
		puts "#{count} bottle of beer on the wall!"
	end 