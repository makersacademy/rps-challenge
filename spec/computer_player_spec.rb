require 'computer_player'

describe ComputerPlayer do
  let(:computer) { described_class.new }

  it { is_expected.to respond_to(:weapon) }

  describe '#weapon' do
    it 'returns Rock' do
      allow(computer).to receive(:rand) {0}

      expect(computer.weapon).to eq :rock
    end

    it 'returns Paper' do
      allow(computer).to receive(:rand) {1}

      expect(computer.weapon).to eq :paper
    end

    it 'returns Scissors' do
      allow(computer).to receive(:rand) {2}

      expect(computer.weapon).to eq :scissors
    end
  end
end
