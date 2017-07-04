class Game
	#bring in the player and grid rb files.
	require_relative 'player.rb'
	require_relative 'grid.rb'
	
	def initialize
		@player1 = Player.new(get_name(1))
		@player2 = Player.new(get_name(2))
 	end
 	def get_name(x)
		puts "Hi Player#{x} what is your name: "
		gets.chomp
	end
	
	def display_name
	 puts "the players are #{@player1.name} #{@player2.name}!"
	end
	

end
a = Game.new
 a.display_name

