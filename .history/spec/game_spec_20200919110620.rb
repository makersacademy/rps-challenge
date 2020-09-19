require 'game'
require 'player'
require 'comp'

describe Game do
	player = Player.new("Ursie")
	comp = Comp.new
	subject = Game.new(player, comp)
end 