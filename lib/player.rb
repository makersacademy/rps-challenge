
class Player

	attr_reader :selection

	def initialize(weapon)
	@selection = weapon
	end

	def choice(selection)
	@selection = selection
	end

end