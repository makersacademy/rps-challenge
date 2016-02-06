require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  before(:example) do
    allow(Kernel).to receive(:rand).and_return(2)
  end

  context '#choice' do
    it 'can return chosen action' do
      computer.pick
      expect(computer.choice).to eq :scissors
    end
  end

  context '#pick' do
    it 'can randomly choose between rock paper or scissors' do
      expect(computer.pick).to eq :scissors
    end
  end
end
