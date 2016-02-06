require 'game'

describe Game do 

subject(:game){described_class.new}
let(:weapons){double(:weapons)}
 
	it 'returns an array of weapons ' do
	expect(game.weapons).to eq ["Rock", "Paper", "Scissors"]
	end


	it 'returns an opponent' do
	allow(game.weapons).to receive(:sample) {"Paper"}
	expect(game.opponent).to eq "Paper"
	end



end