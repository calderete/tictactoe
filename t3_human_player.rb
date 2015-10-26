class HumanPlayer
	def initialize
	puts "What is your name?"
	get_name
	end

	def get_name
		name = gets.chomp
		puts "Welcome #{name}"
	end

	def get_pick
		puts "Make your pick"
		pick = gets.chomp.to_i
	end

end

class ComputerPlayer
	def initialize
	puts "The computer player's mark is O"
	end

	def get_pick
		pick = rand(1..9)
	end
end