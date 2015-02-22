require 'player'

describe Player do 

let(:player) {Player.new("Carrie")}

	it "has a name" do
		expect(player.name).to eq "Carrie"
	end

	it 'can pick a weapon' do 
		player.pick(:paper)
		expect(player.weapon).to eq :paper
	end


end