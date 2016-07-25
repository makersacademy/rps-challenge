class Weapon
TYPES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
	
	attr_reader :type

	def initialize type: nil
		type ||= TYPES[Kernel.rand(0..TYPES.length-1)]
		@type = type
	end

	def score
		TYPES.index(@type)
	end	

end

