require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, name: 'Sheldon') }
  let(:player_2) { double(:computer, name: 'Computer') }

  describe 'initialisation' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'returns player 2' do
      expect(game.player_2).to eq player_2
    end

    it 'has no result' do
      expect(game.result).to be_nil
    end
  end
end
