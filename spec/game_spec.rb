require 'game'

describe Game do
  let(:game) { Game.new }
  describe '#initialize' do
    it 'is an instance of game' do
      expect(game).to be_an_instance_of(Game)
    end
  end
  describe '#play' do
    it 'is a draw if both have the same score' do
      srand(0) #computer is rock
      expect(game.play("Rock")).to eq("Computer chose Rock. It's a draw")
    end
    it 'Computer wins if Rock and Computer has Paper' do
      srand(1) #computer is paper
      expect(game.play("Rock")).to eq("Computer chose Paper. Paper beats Rock. Computer wins")
    end
    it 'Player 1 wins if Rock and Computer has Scissors' do
      srand(4) #computer is scissors
      expect(game.play("Rock")).to eq("Computer chose Scissors. Rock beats Scissors. Player wins")
    end
  end
end