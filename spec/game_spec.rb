require 'game'

describe Game do
  let(:game) { described_class.new }

  describe '#summary' do
    it 'returns rock/paper/scissors' do
      game.player1_choice("ROCK")
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(game.summary[1])
    end

    it 'returns the winner or tie' do
      game.player1_choice("ROCK")
      expect(["You Win!", "GameBot wins!", "It's a draw"]).to include(game.summary[2])
    end
  end
end