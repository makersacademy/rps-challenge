require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
	
  describe '#choice' do

  	it 'returns rock' do
  	  allow(computer).to receive(:choice).and_return(:rock)
  	  expect(computer.choice).to eq :rock
  	end

  	it 'returns paper' do
  	  allow(computer).to receive(:choice).and_return(:paper)
  	  expect(computer.choice).to eq :paper
  	end

  	it 'returns rock' do
  	  allow(computer).to receive(:choice).and_return(:scissors)
  	  expect(computer.choice).to eq :scissors
  	end

  end

end