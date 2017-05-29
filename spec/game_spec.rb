require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#rps' do
    it 'chooses one of rock, paper or scissors for the opponent' do
      expect(game.rps).not_to be_nil
    end
  end

  describe '#compete' do
    it 'compares the two choices to determine who won' do
      expect(game.compete('Rock', 'Paper')).to include("You lose!")
    end
  end

end
