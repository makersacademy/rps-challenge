require 'computer_player'

describe ComputerPlayer do
  let(:computer) { described_class.new }

  it { is_expected.to respond_to(:weapon) }

  describe '#weapon' do
    it 'returns Rock' do
      allow(computer).to receive(:rand) {0}

      expect(computer.weapon).to eq 'Rock'
    end
  end
end
