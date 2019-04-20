require 'game'

RSpec.describe Game do
  let(:game) { described_class.new(player)}
  let(:player) { double :Player }

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
end
