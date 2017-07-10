class Board
	attr_accessor 
	def initialize
		@board = [1,2,3,4,5,6,7,8,9]
	end
	def draw_board
		puts "Tic-Tac-To Board \n \n"
		@board.each_with_index do |x,i| 
			print "| #{x} |" unless (i + 1) % 3 == 0
			if (i + 1) % 3 == 0
			print	x = "| #{x} |\n\n"
			end
		end
	end
	def update_board(choice,char)
		@board[choice -1] = char

	end
	def reset_board
		@board = @board = [1,2,3,4,5,6,7,8,9]
	end
end
a=Board.new
a.draw_board
a.update_board(4,"X")
a.draw_board
a.reset_board
a.draw_board