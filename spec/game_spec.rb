require 'game'

describe Game do
  subject(:game) { described_class.new(player1, computer) }
  subject(:player1) { double :player }
  subject(:computer) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq computer
    end
  end
end