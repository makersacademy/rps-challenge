require 'game'

describe Game do
  subject(:game) { described_class.new(:Trump, :Rock) }

  describe '#current' do
    it 'returns correct information when not instantiated first' do
      game_instance = Game.start(:Clinton, :Paper)
      expect(Game.current).to eq game_instance
    end
  end

  describe '#generate_response' do
    it 'can choose "rock" from rock, paper and scissors' do
      srand(2)
      expect(game.generate_response).to eq :Rock
    end
  end
end
