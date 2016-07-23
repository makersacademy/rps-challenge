require 'game'

describe Game do
	subject(:game) { described_class.new(player_1: player_1, player_2: player_2) }
	let(:player_1) { double :player }
	let(:player_2) { double :player }
	context 'players' do
		it "knows player 1" do
			expect(game.player_1).to eq player_1
		end
		it "knows player 2" do
			expect(game.player_2).to eq player_2
		end

	end
end