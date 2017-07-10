class Grid
	attr_accessor :grid
	def initalize
		@grid = [[".",".","."],[".",".","."],[".",".","."]]
	end
	def draw_grid(arr)
		
		arr.each_with_index  do |row,x|
			puts row.each {|p| p}.join("_|_")

		end
	end
end
#a=Grid.new
#a.draw_grid([[".",".","."],[".",".","."],[".",".","."]])
