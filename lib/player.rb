class Player

	WEAPONS = ["Rock", "Paper", "Scissors"]

private
	attr_reader :name, :weapon
public

	def initialize name: "Computer"
		@name = name
	end

	def get_name
		@name
	end

	def choose_weapon weapon: WEAPONS[Kernel.rand(0..2)]
		@weapon = weapon
	end

	def get_weapon
		@weapon
	end

end