require 'game'

describe Game do
  let(:player1) { double(:player1, name: "Sophie") }
  let(:player2) { double(:player2, name: "Robot") }
  subject(:game) { described_class.new(player1, player2) }

  it 'lets player1 play the game' do
    expect(game.player1).to(eq(player1))
  end

  it 'lets player2 play the game' do
    expect(game.player2).to(eq(player2))
  end

  describe '#result' do

    it 'returns a draw result' do
      allow(game.player1).to(receive(:weapon).and_return("Rock"))
      allow(game.player2).to(receive(:weapon).and_return("Rock"))
      expect(game.result).to(eq("It's a draw"))
    end

    it 'returns a win result when player 1 wins' do
      allow(game.player1).to(receive(:weapon).and_return("Rock"))
      allow(game.player2).to(receive(:weapon).and_return("Scissors"))
      expect(game.result).to(eq("Sophie wins!"))
    end

    it 'returns a win result when player 2 wins' do
      allow(game.player1).to(receive(:weapon).and_return("Scissors"))
      allow(game.player2).to(receive(:weapon).and_return("Rock"))
      expect(game.result).to(eq("Robot wins!"))
    end

  end

end
