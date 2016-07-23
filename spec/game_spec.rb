require 'game'

describe Game do

  let(:luke) { double :player }
  subject(:game) { described_class.new(luke) }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq luke
    end
  end

end
