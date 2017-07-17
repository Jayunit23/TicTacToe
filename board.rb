class Board
	
	def initialize
		@board = @board = [1,2,3,4,5,6,7,8,9]
		@wins_combo = [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]]
		@win = false

	end
#-------------------------------------------------------------------------------------------
#This draws the 3 by 3 board on the screen.	

	def draw_board
		puts "\nTic-Tac-To Board \n \n"
		@board.each_with_index do |x,i| 
			print "| #{x} |" unless (i + 1) % 3 == 0
			if (i + 1) % 3 == 0
			print	x = "| #{x} |\n\n"
			end
		end
	end
#-------------------------------------------------------------------------------------------		
#sets board back to oringal board no markers
	def reset_board
		@board = @board = [1,2,3,4,5,6,7,8,9]
	end
#-------------------------------------------------------------------------------------------	

#-------------------------------------------------------------------------------------------	
#takes users choice and char either X or O update it on the araay and call the redraw.
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
#This has an array of wins call @win_combo it check each of these combinations and passes it to a result array which is check by the methods check_results.
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
private
	def check_results(results,char)
		 if results[0..2] == [char,char,char]
		 	@win = true
		 	#results = []

		 end
	end
#-------------------------------------------------------------------------------------------	
	#checks to see if the users choice is valid i.e between 1-0 and not already taken.
	def available_options(choice)
		@board.include?(choice)
	end
end