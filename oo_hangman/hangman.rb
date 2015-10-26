

	
	answers = ["blue", "glass", "rails", "cat", "chicken", 
					"black", "dog"]
	

	def player
		puts "What is your name?:"
		name = gets.chomp
	end

	def get_guess
		puts "Make your guess"
		guess = gets.chomp.downcase
		until guess.is_a? String && guess.length = 1
			puts "Please choose a single, letter"
		end
	end

	def take_turn(guess, answers)
		get_guess
		if guess.include?.answers
			

	
	def game
		#take turn
		#get guess
		#check for match
	end 