require 'computer_player'

describe ComputerPlayer do
  let(:computer) { described_class.new }

  it { is_expected.to respond_to(:weapon) }

  describe '#weapon' do
    it 'returns a random weapon' do
      allow(Kernel).to receive(:rand) {1}

      expect(computer.weapon).to eq 'Rock'
    end
  end
end
