require 'Computer_player'

describe ComputerPlayer do
  subject(:comp) {described_class.new}

  describe '#name' do
    it 'knows its name' do
      expect(comp.name).to eq 'Computer'
    end
  end

  describe '#hand' do
    it 'returns computers hand' do
      allow(comp).to receive(:hand) {'Rock'}
      expect(comp.hand).to eq 'Rock'
    end
  end
end
