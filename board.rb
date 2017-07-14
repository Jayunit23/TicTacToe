class Board
	attr_accessor 
	def initialize
		@board = @board = [1,2,3,4,5,6,7,8,9]
		@wins_combo = [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]]
		@win = false

	end
#-------------------------------------------------------------------------------------------	
	def draw_board
		puts "Tic-Tac-To Board \n \n"
		@board.each_with_index do |x,i| 
			print "| #{x} |" unless (i + 1) % 3 == 0
			if (i + 1) % 3 == 0
			print	x = "| #{x} |\n\n"
			end
		end
	end
#-------------------------------------------------------------------------------------------		
	def reset_board
		@board = @board = [1,2,3,4,5,6,7,8,9]
	end
#-------------------------------------------------------------------------------------------	
	def available_options(choice)
		@board.include?(choice)
	end
#-------------------------------------------------------------------------------------------	
	def update_board(choice,char)
		x = available_options(choice)
		if x == true
			@board[choice -1] = char
			draw_board
			#check_win(char)
		else
			puts "This move is not possible please choose a valid move"
			return false
		end
	end
#-------------------------------------------------------------------------------------------	

	def check_win(char)
		results =[]
		@wins_combo.each do |set|
		  set.map do |i|
		    if @board[i] == char
              results.push(@board[i])
			end
		  end
		    check_results(results,char)
		   
		    results = []
		    if @win == true
		      return @win
			end
		end
	end
#-------------------------------------------------------------------------------------------	
	def check_results(results,char)
		 if results[0..2] == [char,char,char]
		 	p "win"
		 	@win = true
		 	#results = []

		 end
	end
#-------------------------------------------------------------------------------------------	
end
=begin
a= Board.new
a.draw_board
a.update_board(1,"X")
a.check_win("X")
a.update_board(5,"X")
a.check_win("X")

a.update_board(9,"X")
a.check_win("X")
a.reset_board
a.draw_board
a.update_board(2,"X")
a.check_win("X")
a.update_board(5,"X")
a.check_win("X")

a.update_board(8,"X")
a.check_win("X")
=end