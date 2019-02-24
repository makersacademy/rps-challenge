require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe 'player_name' do
    it 'returns the player name' do
      expect(game.player).to eq player
    end
  end

  describe '#make_move' do
    it "makes a computer random move" do
      game.make_move
      expect(game.move).not_to be nil
    end
  end

  describe '#winner' do
    it "tells the winner of the game" do
      expect(game.winner("Rock", game.make_move)). to eq(0).or eq(1).or eq(2)
    end
  end
end
