require 'game'

describe Game do

subject(:game) {described_class.new("Bob","Bill")}
	
	describe '#initialize' do

		it 'with a player 1' do
			expect(game.player_1).to eq "Bob"
		end

		it 'with a player 2' do
			expect(game.player_2).to eq "Bill"
		end
	end

end