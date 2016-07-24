class Weapon
TYPES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
	
	private
	attr_reader :type
	public

	def initialize type: nil
		type ||= TYPES[Kernel.rand(0..TYPES.length-1)]
		@type = type
	end

	def type
		@type
	end

	def score
		TYPES.index(@type)
	end	

end

