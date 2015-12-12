require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player_1' do
    it 'should return the player' do
      expect(game.player_1).to eq player
    end
  end

  describe '#player_2' do
    it 'should return the computer' do
      expect(game.player_2).to eq computer
    end
  end
end
