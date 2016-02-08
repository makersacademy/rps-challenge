require './lib/game.rb'

class Computer

	def play
	Game::WEAPONS.sample
	end

end