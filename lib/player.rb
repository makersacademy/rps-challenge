class Player

attr_accessor :name
attr_accessor :weapon

	def initialize(name)
		@name = name
	end

	def pick(weapon)
		@weapon = weapon
	end

end