require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#take_turn' do
    it 'Can choose rock' do
      allow(computer).to receive(:rand) { 0 }
      computer.take_turn
      expect(computer.attack).to eq :rock
    end

    it 'Can choose paper' do
      allow(computer).to receive(:rand) { 1 }
      computer.take_turn
      expect(computer.attack).to eq :paper
    end

    it 'Can choose scissors' do
      allow(computer).to receive(:rand) { 2 }
      computer.take_turn
      expect(computer.attack).to eq :scissors
    end
  end

end
