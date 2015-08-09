require 'player'

describe Player do
	it "player must respond to pick with 1 argument" do
		expect(subject).to respond_to(:pick).with(1).argument
	end

	it "must return error if object is not rock, paper or scissors" do
		expect{subject.pick("error")}.to raise_error "Must pick rock paper or scissors"
	end
end