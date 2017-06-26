require 'game'
require 'player'

describe Game do
  let(:player) { double(:player, name: 'jini') }
  subject(:game) { described_class.new(player) }

  let(:player2) { double(:player, name: 'john', choice: :scissors) }
  subject(:game2) { described_class.new(player2, :rock) }

  describe '#attributes' do
    it 'gets player' do
      expect(game.player).to eq player
    end
  end

  describe '#opponent_choice' do
    it 'makes a random choice' do
      game.choose
      expect([:rock, :paper, :scissors]).to include game.opponent_choice
    end
  end

  describe '#win?' do
    it 'tells me if I\'ve won' do
      expect(game2.win?).to be false
    end
  end

  describe '#tie?' do
    it 'tells me if there is a tie' do
      expect(game2.tie?).to be false
    end
  end
end
