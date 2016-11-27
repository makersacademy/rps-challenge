require 'player'

describe Player do

	subject(:player) { described_class.new("Kim") }

	it "is initialized with a name" do
		expect(player.name).to eq "Kim"
	end

end