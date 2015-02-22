class Computer

attr_accessor :weapon

	def pick_weapon
		@weapon = [:Rock, :Paper, :Scissors].sample
	end


end