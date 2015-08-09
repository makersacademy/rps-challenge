require 'player'

describe Player do
	it "player must respond to pick with 1 argument" do
		expect(subject).to respond_to(:pick).with(1).argument
	end
end