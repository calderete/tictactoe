require './t3_human_player'
require 'pry'


class T3
	def initialize
	end

	def greeting
		puts "Is player one a 1: human, or 2: computer"
		choice = gets.chomp.to_i
		if choice == 1
			@player1 = HumanPlayer.new
		else
			@player1 = ComputerPlayer.new
		end

		puts "Is player two a 1: human, or 2: computer"
		choice = gets.chomp.to_i
		if choice == 1
			@player2 = HumanPlayer.new
		else
			@player2 = ComputerPlayer.new
		end
		take_turn
	end

	def take_turn
		current_player = @player2
		if current_player = @player2
			current_player = @player1
		else
			current_player = @player2
		end
		
		 pick = current_player.get_pick
		
		binding.pry
	end

	def t3
		Board.new
		until game_over
			take_turn
		end
	end
end

play = T3.new
play.greeting
