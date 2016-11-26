require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe '#choice' do
    it 'can choose rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(computer.choice).to eq :rock
    end

    it 'can choose paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(computer.choice).to eq :paper
    end

    it 'can choose scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(computer.choice).to eq :scissors
    end
  end


end
