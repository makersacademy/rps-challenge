require 'game'

describe Game do
  let(:player) { double :player }
  describe '#self.create' do
    it 'create a game inistance' do
      expect(described_class.create(player).player). to eq player
    end
  end
end
