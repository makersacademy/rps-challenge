require_relative 'weapons'

class Computer

	include Weapons

	def weapon
		WEAPONS.sample
	end

end