require 'player'

describe Player do 
let(:rock){:rock}

subject(:player){described_class.new(rock)}

	it 'lets me see the player I have chosen' do 
	expect(player.selection).to eq :rock
	end


end