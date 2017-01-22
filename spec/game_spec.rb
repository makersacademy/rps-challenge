require 'game'

describe Game do
let(:player_1){double :player_1, :name=> "Mabel", :choice =>"rock"}
let(:player_2){double :player_2, :play =>"scissors"}
subject(:game){described_class.new(player_1, player_2)}


	describe '#play' do
		it 'should return compare array' do
			allow(player_2).to receive(:play).and_return(["rock","scissors"])
			game.play
		end
	end

	describe '#check' do
		it 'should return draw' do
			expect(game.check).to eq "it's a draw"
		end
	end
	
end