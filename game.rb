class Game

	attr_accessor :name, :char ,:c, :choice
	#bring in the player and grid rb files.
	#require_relative 'player.rb'
	#require_relative 'board.rb'
	load 'player.rb'
	load 'board.rb'
	def initialize
		@player1 = Player.new(get_name(1),"X")
		@player2 = Player.new(get_name(2),"O")
		@c = Board.new
 	end
 	def get_name(x)
		puts "Hi Player#{x} what is your name: "
		gets.chomp
	end
	
	def display_name
	 puts "The players are #{@player1.name} & #{@player2.name}!"
	 puts "Below is the board!"
	end
	def take_move(player)
		  puts "#{player.name} to move. \nPlease choose a available grid number to place an #{player.char}."
		  choice = gets.chomp
		  char = player.char
		  return choice, char
	end
	def win(player)
		puts "#{player.name} WINS! \n What a Battle!"
		puts "PLAY AGAIN? type Y"
		answer = gets.chomp.capitalize
			if answer == "Y"
				@c =Board.new
				@c.reset_board
				play_game()
			else
				abort ("Thanks for Playing!")
			end
	end


	def play_game
		count = 0
		marker = nil
		win_flag = false
		@c.draw_board
		while count < 9

			  if count % 2 ==0
			  	  marker = @player1
				  char = "X"
			  else
				  marker = @player2
				  char ="O"
			  end
		  var1, var2 = take_move(marker)
		  update = @c.update_board(var1.to_i,var2)
		  if update == false
		  	count == count
		  else
		    checking_win = @c.check_win(char)
		    if checking_win == true
		    	win(marker)
		    else
		      count += 1
		      if count == 9
		  	    puts "Game is a draw"
		      end
		    end
		    p count
		  end

		end

	end

end

#--------------------

a = Game.new
a.display_name
a.play_game