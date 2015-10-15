class Board
	def initialize
		@board = (1..9).to_a
		board = @board
		show_board(board)
	end
	def show_board(board)
		
		puts"
			#{board[0]} | #{board[1]} | #{board[2]}
			#{board[3]} | #{board[4]} | #{board[5]}
			#{board[6]} | #{board[7]} | #{board[8]}

		"
	end

	def update_board(pick, mark)
		@board[pick -1] = mark
		board = @board
		binding.pry
		show_board(board)
	end

end
