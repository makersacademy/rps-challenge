require 'game'

describe Game do

	let(:player) { double :player }
	let(:computer) { double :computer }
	subject(:game) { Game.new(player, computer) }

	describe '#initialize' do
		it 'returns the symbol chosen by player' do
		  expect(game.player).to eq player
		end

		it 'returns the symbol chosen by computer' do
		  expect(game.computer).to eq computer
		end

	end
end