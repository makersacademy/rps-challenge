class Weapon
TYPES = ["Rock", "Paper", "Scissors"]
	
private
	attr_reader :type
public

	def initialize type: nil
		type ||= TYPES[Kernel.rand(0..2)]#TYPES.length-1)]
		@type = type
	end

	def get_type
		@type
	end

	def get_score
		TYPES.index(@type)
	end	

end

