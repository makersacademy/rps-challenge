require 'player'

describe Player do

	subject(:player) { described_class.new("Kim") }

	it "is initialized with a name" do
		expect(player.name).to eq "Kim"
	end

	describe "#choose_weapon" do

		it "should set a weapon choice" do
			player.choose_weapon("Scissors")
			expect(player.weapon).to eq :scissors
		end

	end

end