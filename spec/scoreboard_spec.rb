require 'scoreboard'

describe Scoreboard do
  subject(:scoreboard) { described_class.new }
  let(:game) { double 'A game', choose_winner: 'player' }

  describe '#update_score' do
    it 'updates the scores' do
      scoreboard.update_score(game.choose_winner)
      expect(scoreboard.players_score).to eq 1
      expect(scoreboard.computers_score).to eq 0
    end
  end
end
