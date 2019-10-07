require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player, "Rock") }
  let(:game) { double(:game) }
  let(:player) { double(:player) }

  describe '#result' do
    it 'method for comparing moves: computer wins' do
      player = "Scissors"
      allow(game).to receive(:result).and_return("Computer wins")
    end

    it 'method for comparing moves: player wins' do
      player = "Paper"
      allow(game).to receive(:result).and_return("You win!")
    end
  end

end
