require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer_player }
  subject(:game) { described_class.new(player, computer)}

  describe 'initialize' do
    it 'initializes with a player and stores player as player' do
      expect(game.player).to eq player
    end
    it 'initializes with computer player as default and stores' do
      expect(game.computer_player).to eq computer
    end
  end
end
