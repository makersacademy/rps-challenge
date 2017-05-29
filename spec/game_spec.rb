require 'game'

describe Game do

  let(:player) { double(:player, name: 'Bob', score: 0) }
  let(:opponent) { double(:player, name: 'Computer', score: 0) }
  let(:game) { Game.new(player, opponent) }

  describe '#rps' do
    it 'chooses one of rock, paper or scissors for the opponent' do
      expect(game.rps).not_to be_nil
    end
  end

  describe '#compete' do
    it 'compares the two choices to determine who won' do
      allow(player).to receive(:score=)
      allow(opponent).to receive(:score=)
      expect(game.compete('Rock', 'Paper')).to include("You lose!")
      expect(game.compete('Rock', 'Rock')).to include("A draw!")
      expect(game.compete('Paper', 'Paper')).to include("A draw!")
      expect(game.compete('Paper', 'Rock')).to include("You win!")
      expect(game.compete('Rock', 'Scissors')).to include("You win!")
      expect(game.compete('Scissors', 'Scissors')).to include("A draw!")
      expect(game.compete('Scissors', 'Paper')).to include("You win!")
      expect(game.compete('Scissors', 'Rock')).to include("You lose!")
      expect(game.compete('Paper', 'Scissors')).to include("You lose!")
    end
  end

end
