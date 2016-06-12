require 'Computer_player'

describe ComputerPlayer do
  subject(:comp) {described_class.new}

  describe '#hand' do
    it 'returns the computers move' do
      allow(comp).to receive(:hand) {'Rock'}
      expect(comp.hand).to eq 'Rock'
    end
  end
end
