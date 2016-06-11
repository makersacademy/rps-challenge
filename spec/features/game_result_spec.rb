require 'game'

describe Game do

  subject(:game) { described_class.new(Player.new("Toby")) }

  context '#play' do
    it 'returns the win if player chooses rock and computer sci' do
      srand(3)
      game.play("rock")
      expect(game.outcome[0]).to eq :win
    end
    it 'returns the lose if player chooses paper and computer sci' do
      srand(3)
      game.play("paper")
      expect(game.outcome[0]).to eq :lose
    end
    it 'returns the win if player chooses schi and computer sci' do
      srand(3)
      game.play("scissors")
      expect(game.outcome[0]).to eq :tie
    end
  end
end
