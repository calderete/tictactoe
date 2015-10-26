class T3
	def initialize
	end

	def gretting
		puts "Is player one a 1: human, or 2: computer"
		choice = gets.chomp.to_i
		if choice == 1
			@player_1 = HumanPlayer.new
		else
			@player_1 = ComputerPlayer.new
		end

		puts "Is player two a 1: human, or 2: computer"
		if choice == 1
			@player2 = HumanPlayer.new
		else
			@player2 = ComputerPlayer.new
		end
	end 