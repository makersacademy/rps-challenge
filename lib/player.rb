require_relative 'weapon'

class Player

	private
	attr_reader :name, :weapon
	public

	def initialize name: nil
		name ||= "Computer"
		@name = name
	end

	def name
		@name
	end

	def choose_weapon weapon: nil
		@weapon = Weapon.new(type: weapon)
	end

	def weapon
		@weapon
	end

end
