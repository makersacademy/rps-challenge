require 'scoreboard'

describe Scoreboard do
  subject(:scoreboard) { described_class.new }
  let(:game) { double 'A game', choose_winner: 'player' }
  let(:draw) { double 'A game that is drawn', choose_winner: nil }

  describe '#update_score' do
    it 'updates the scores' do
      scoreboard.update_score(game.choose_winner)
      expect(scoreboard.players_score).to eq 1
      expect(scoreboard.computers_score).to eq 0
    end

    it "doesn't change scores if its a draw" do
      scoreboard.update_score(draw.choose_winner)
      expect(scoreboard.players_score).to eq 0
      expect(scoreboard.computers_score).to eq 0
    end
  end
end
