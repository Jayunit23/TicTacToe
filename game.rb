class Game

	attr_accessor :name
	#bring in the player and grid rb files.
	require_relative 'player.rb'
	require_relative 'board.rb'
	
	def initialize
		@player1 = Player.new(get_name(1))
		@player2 = Player.new(get_name(2))
		#@grid = Grid.new
 	end
 	def get_name(x)
		puts "Hi Player#{x} what is your name: "
		gets.chomp
	end
	
	def display_name
	 puts "the players are #{@player1.name} #{@player2.name}!"
	 puts "Below is the board!"
	end

end
a = Game.new
a.display_name
#b = board.new
#b.draw_grid([["1","2","3"],["4","5","6"],["7","8","9"]])

