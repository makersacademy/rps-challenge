require 'rps'


describe Rps do
	

	let(:rps) {Rps.new}

	it 'should have a default value' do
		expect(rps.content).to eq('lizard')
	end

	it 'should be able to change to paper' do
		rps.change_to_paper
		expect(rps.content).to eq('paper')
	end

	it 'should be able to change to scissors' do
		rps.change_to_scissors
		expect(rps.content).to eq('scissors')
	end

	it 'should be able to change to rock' do
		rps.change_to_scissors
		rps.change_to_rock
		expect(rps.content).to eq('rock')
	end

end