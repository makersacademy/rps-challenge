require 'game'

describe Game do
  let(:player_1) { double :player}
  let(:player_2) { double :player}
  subject(:game) { described_class.new(player_1, player_2) }


  describe '#player_1' do
    it 'gives the player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'gives the player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#winner' do
    it 'returns who is the winner' do
      expect(game.winner("Rock", "Scissors")).to eq "Player"
    end
  end
end
