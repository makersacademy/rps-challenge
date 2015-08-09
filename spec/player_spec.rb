require 'player'

describe Player do
	it "player must respond to pick with 1 argument" do
		expect(subject).to respond_to(:pick).with(1).argument
	end

	it "must return error if object is not rock, paper, scissors, spock or lizard" do
		expect{subject.pick("error")}.to raise_error "Must pick rock, paper, scissors, spock or lizard"
	end

	it "when computer picks rock and player pickc paper, must return You win!" do
		allow(subject).to receive(:computer).and_return(4)
		expect(subject.pick("paper")).to eq "You win!"
	end
end