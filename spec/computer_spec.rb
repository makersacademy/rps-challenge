require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#take_turn' do
    it 'Can choose rock' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      computer.take_turn
      expect(computer.attack).to eq :rock
    end

    it 'Can choose paper' do
      allow_any_instance_of(Array).to receive(:sample) { :paper }
      computer.take_turn
      expect(computer.attack).to eq :paper
    end

    it 'Can choose scissors' do
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
      computer.take_turn
      expect(computer.attack).to eq :scissors
    end
  end

end
