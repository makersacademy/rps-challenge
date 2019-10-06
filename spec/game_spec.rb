require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player, current_move: 'Rock', name: 'player1' }
  let(:player2) { double :player, current_move: 'Rock', name: 'player2' }
  let(:player3) { double :player, current_move: 'Paper', name: 'player3' }

  describe '#add' do
    it 'can add players' do
      (game.add(player1, player2))
      expect(game.players).to eq [player1, player2]
    end
  end

  describe '#tie?' do
    it 'returns true when moves are the same' do
      game.add(player1, player2)
      expect(game.tie?).to eq(true)
    end

    it 'returns false when moves are different' do
      game.add(player1, player3)
      expect(game.tie?).to eq(false)
    end
  end

  describe '#win' do
    it 'returns p3 wins when paper beats rock' do
      game.add(player1, player3)
      expect(game.win).to include(player3.name)
    end
  end
end
