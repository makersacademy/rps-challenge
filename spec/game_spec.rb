require 'game'

describe Game do
  subject(:game) { described_class.new('Terry', 'Mace') }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq 'Terry'
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq 'Mace'
    end
  end
end
