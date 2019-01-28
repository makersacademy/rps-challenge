require 'game'

describe Game do
  let(:player_1) { double :player }
  subject(:game) { described_class.new(player_1) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end
end
