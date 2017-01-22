require 'game'

describe Game do
let(:player_1){double :player_1, :name=> "Mabel", :choice =>"rock"}
let(:player_2){double :player_2, :name=> "Computer", :play =>"scissors"}
subject(:game){described_class.new(player_1, player_2)}


	describe '#play' do
		it 'should return draw' do
			expect(game.play).to eq "Mabel is the winner"
		end

		it 'should return player 1 is the winner' do
			expect(player_2).to receive(:play).and_return("rock")
			expect(game.play).to eq "It's a draw!"
		end

		it 'should return player 2 is the winner' do
			expect(player_2).to receive(:play).and_return("paper")
			expect(game.play).to eq "Computer is the winner"
		end
	end
	
end