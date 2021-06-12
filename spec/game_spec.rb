require 'game'

RSpec.describe Game do
 	let(:player_1) { double(:player_1, name: 'Fabio') }
	 subject(:game) { Game.new(player_1) }

	 it 'can take one player as an argument' do

		  expect(subject.player_1).to be(player_1)
	 end

	 it 'returns a random RSP move' do
	  	expect(subject.robot).to eq('rock').or eq('paper').or eq('scissors')
	 end
end
