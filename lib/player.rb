class Player

	attr_reader :name, :weapon

	def initialize(name)
		@name = name
	end

	def choose_weapon(choice)
		@weapon = choice.downcase.to_sym
	end

end