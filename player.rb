#player class cretes instances of the player
class Player
	attr_accessor :name, :char

  def initialize(name,char)
	@name = name
	@char = char

  end
end