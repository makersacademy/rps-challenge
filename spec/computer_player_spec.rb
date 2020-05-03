require 'computer_player'

describe ComputerPlayer do
  let(:computer) { described_class.new }

  it { is_expected.to respond_to(:weapon) }

  describe '#weapon' do
    it 'returns Rock' do
      allow(computer).to receive(:rand) {0}

      expect(computer.weapon).to eq 'Rock'
    end

    it 'returns Paper' do
      allow(computer).to receive(:rand) {1}

      expect(computer.weapon).to eq 'Paper'
    end
  end
end
