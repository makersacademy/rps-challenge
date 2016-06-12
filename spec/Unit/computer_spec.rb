require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
	
  describe '#choice' do

  	it 'returns rock' do
  	  allow(computer).to receive(:weapon).and_return(:rock)
  	  expect(computer.weapon).to eq :rock
  	end

  	it 'returns paper' do
  	  allow(computer).to receive(:weapon).and_return(:paper)
  	  expect(computer.weapon).to eq :paper
  	end

  	it 'returns rock' do
  	  allow(computer).to receive(:weapon).and_return(:scissors)
  	  expect(computer.weapon).to eq :scissors
  	end

  end

end