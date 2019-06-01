require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { described_class.new(player_1, player_2) }

  describe 'initialize' do
    it 'initializes with a player and stores player as player' do
      expect(game.player_1).to eq player_1
    end
    it 'initializes with player_2 player as default and stores' do
      expect(game.player_2).to eq player_2
    end
  end

  
end