
$LOAD_PATH << "."
require "validate"


class Piece
	def initialize(x,y)
		@position=[x,y]
	end

	def set_position(next_move)
		@position = next_move
		puts "Posicion actual #{@position}"
	end

	def no_set_position
		puts "Posicion incorrecta"
	end
end


class Rock < Piece
	
	def validate_move(next_move)
		
		if Validate.rock(@position, next_move)
			set_position(next_move)
		else
			no_set_position
		end
	end
end

class Bishop < Piece
	def validate_move(next_move)
		if Validate.bishop(@position, next_move)
			set_position(next_move)
		else
			no_set_position
		end

	end
end


class Queen < Piece

	def validate_move(next_move)
		if Validate.rock or Validate.bishop
			set_position(next_move)
		else
			no_set_position
		end
	end
end
#***********************************

my_rock = Rock.new(1,1)
my_rock.validate_move([3,5])
=begin
my_bishop = Bishop.new(5,5)
my_bishop.validate_move([3,7])
=end
my_queen = Queen.new(5,1)
my_queen.validate_move([6,3])