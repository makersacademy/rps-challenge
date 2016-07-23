require 'weapon'

describe Weapon do
	subject(:weapon) { described_class.new(type: "Rock") }

	it "knows its type" do
		expect(weapon.get_type).to eq "Rock"
	end

	context '#get_score' do
		it "knows the score of its weapon type" do
			expect(weapon.get_score).to eq 0
		end
	end

	it "is initialized with a random weapon if none is supplied" do
		allow(Kernel).to receive(:rand).and_return(1)
		expect(Weapon.new.get_type).to eq "Paper"
		allow(Kernel).to receive(:rand).and_return(2)
		expect(Weapon.new.get_type).to eq "Scissors"
	end
 
end