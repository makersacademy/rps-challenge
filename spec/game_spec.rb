require 'game'

RSpec.describe Game do
 	let(:player_1) { double(:player_1, name: 'Fabio') }

	 it 'can take one player as an argument' do
		  game = Game.new(player_1)
		  expect(game.player_1).to be(player_1)
	 end
end
