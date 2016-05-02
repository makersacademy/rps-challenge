require 'computer'

describe Computer do
	subject(:computer) {described_class.new}

	it "returns random choice" do
		allow(computer).to receive(:play).and_return("rock")
		expect(computer.choice).to eq "rock"
	end
end