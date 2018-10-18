require "game"

describe Game do
  let(:player1) { double(:player1, choice: "Rock") }
  let(:player2) { double(:player2, choice: "Scissors") }
  let(:game) { Game.new(player1, player2) }

  describe '#result' do
    it 'returns winning player' do
      expect(game.result).to eq player1
    end

    it 'returns "tie" if no winner' do
      allow(player2).to receive(:choice).and_return("Rock")
      expect(game.result).to eq "tie"
    end
  end
end
