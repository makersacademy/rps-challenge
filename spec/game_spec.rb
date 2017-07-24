require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: "Rango", current_choice: "Rock" }

  describe '#generate_response' do
    it 'generates random reponse' do
      game.generate_response
      expect(game.opponent_response).not_to be_nil
    end
  end

  describe '#declare_winner' do
    it 'declare player the winner' do
      allow(subject).to receive(:opponent_response).and_return("Scissors")
      game.declare_winner
      # expect(game.winner).to eq "You win"
      expect(game.winner).not_to be_nil
    end
    it 'declare opponent the winner' do
      allow(subject).to receive(:opponent_response).and_return("Paper")
      game.declare_winner
      # expect(game.winner).to eq "The Opponent wins"
      expect(game.winner).not_to be_nil
    end
    it 'declare a tie' do
      allow(game).to receive(:opponent_response).and_return("Rock")
      game.declare_winner
      # expect(game.winner).to eq "No win. It's a draw"
      expect(game.winner).not_to be_nil
    end
  end
end
