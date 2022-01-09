require 'game'

describe Game do
  let(:game) { described_class.new("ROCK") }

  describe '#player2_choice' do
    it 'changes player2_choice from computer_choice' do
      game.player2_choice("ROCK")
      expect(game.summary).to eq(["ROCK", "ROCK", "It's a draw!"])
    end
  end
  
  describe '#summary' do
    it 'returns rock/paper/scissors' do
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(game.summary[1])
    end

    it 'returns the winner or tie' do
      expect(["Player 1 Wins!", "Player 2 Wins!", "It's a draw!"]).to include(game.summary[2])
    end
  end
end