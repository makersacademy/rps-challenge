require 'player'

describe Player do
let(:player) {Player.new}

	it "can select the rock strategy" do
		expect(player.strategy("rock")).to eq :rock
	end

	it "can select the paper strategy" do
		expect(player.strategy("paper")).to eq :paper
	end

	it "can select the scissors strategy" do
		expect(player.strategy("scissors")).to eq :scissors
	end

end