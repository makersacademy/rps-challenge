require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(Player.new('Jack'),Player.new('Jill')) }

  describe '#player1_name' do
    it 'returns the name' do
      expect(game.player1.name).to eq 'Jack'
    end
  end

  describe '#player2_name' do
    it 'returns the name' do
      expect(game.player2.name).to eq 'Jill'
    end
  end
end
