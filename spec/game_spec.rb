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

	describe '#switch_player' do

		it 'changes the current player' do
			game.switch_player
			expect(game.current_player).to eq "Bill"
		end
	end

	describe '#current_opponent' do

		it 'returns the current opponent' do
			expect(game.current_opponent).to eq "Bill"
		end
	end

end