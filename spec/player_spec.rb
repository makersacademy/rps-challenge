require 'player'

describe Player do 

let(:player) {Player.new("Carrie")}

	it "has a name" do
		expect(player.name).to eq "Carrie"
	end


end