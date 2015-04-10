require "pry"

module Validate
	def Validate.rock(position, next_move)
		position[0] == next_move[0] or position[1] == next_move[1]
	end

	def Validate.bishop(position, next_move)
		(next_move[0] - position[0]).abs == (next_move[1] - position[1]).abs
	end




end