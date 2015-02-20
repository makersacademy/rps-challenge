require 'rps'


describe Rps do
	

	let(:rps) {Rps.new}

	it 'should have a content of either rock,paper or scissors' do
		expect(rps.content).to eq(rock)
	end

end