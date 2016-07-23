require_relative 'weapon'

class Player

private
	attr_reader :name, :weapon
public

	def initialize name: nil
		name ||= "Computer"
		@name = name
	end

	def get_name
		@name
	end

	def choose_weapon weapon: nil
		@weapon = Weapon.new(type: weapon)
	end

	def get_weapon
		@weapon
	end

end
