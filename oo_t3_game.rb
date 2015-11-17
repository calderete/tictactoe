require 'set'
require './t3_player'
require './t3_board'
require 'pry'

MARK_1 = "X"
MARK_2 = "O"


class T3
	def initialize
		@board = Board.new
	end

	def game_over
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
		current_player = @player2
		switch_player(current_player)
	end

	def move_valid?
		@moves_left = Set.new
	end

	def take_turn(current_player, mark)
		pick = current_player.get_pick
		
		@board.update_board(pick, mark)
		@moves_left.add(pick)
		binding.pry
		switch_player(current_player)
	end

	def switch_player(current_player)
		until game_over
			if current_player == @player2
				current_player = @player1
				mark = MARK_1
			else
				current_player = @player2
				mark = MARK_2
			end
			take_turn(current_player, mark)
		end
		
	end
end

play = T3.new
play.greeting
