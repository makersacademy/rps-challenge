require_relative 'weapon'

class Player

	attr_reader :name, :weapon

	def initialize name: nil
		name ||= "Computer"
		@name = name
	end

	def choose_weapon weapon: nil
		@weapon = Weapon.new(type: weapon)
	end

end
