require "player"

describe Player do 
subject(:name) { double(:name) }
subject(:player){described_class.new(name)}


	it "initializes with an entered name" do
		expect(player.name).to eq name
	end
	
end