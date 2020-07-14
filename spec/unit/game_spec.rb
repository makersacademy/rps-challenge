require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:game) { Game.new(player, computer) }

  describe '#player' do
    it 'gets the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'gets the computer' do
      expect(game.computer).to eq computer
    end
  end
end
