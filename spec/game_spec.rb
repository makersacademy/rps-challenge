require 'game'

RSpec.describe Game do
  let(:game) { described_class.new(player, 'Rock') }
  let(:player) { double :Player, :name => 'Chris' }

  describe '#initialize' do
    it 'has a default score' do
      expect(game.score).to eq(described_class::DEFAULT_SCORE)
    end
    it 'there is a player' do
      expect(game.player).to eq(player)
    end

    it 'is suppose to have a default name' do
      expect(game.name).to eq(described_class::DEFAULT_NAME)
    end
  end

  describe '#random_choice' do
    it 'gives a random choice' do
      srand(4)
      expect(game.random_choice).to eq(:Scissors)
    end
  end

  describe '#results' do
    it 'tells who won' do
      expect(game.choice).to eq('Chris chose Rock Bot chose Scissors')
    end
  end
end
