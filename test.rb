grid = [["a","b","c"],["d","e","f"],["g","h","i"]]
def draw_grid(arr)
	
=begin
		if x < 1 
			row.each_with_index do |column,y|
				print "#{column}"
			end
		end
		
		if (x > 0 && x < 2) 
			row.each_with_index do |column,y|
				print "#{column}"
			end
		end
=end
	arr.each_with_index  do |row,x|
		puts row.each {|p| p}.join("_|_")

	end
end


draw_grid(grid)