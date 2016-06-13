require 'game'

describe Game do

  subject(:game) { described_class.new(Player.new("Toby")) }

  context '#play' do
    it 'returns the win if player chooses rock and computer sci' do
      srand(3)
      expect(game.play("rock")).to include :win
    end
    it 'returns the lose if player chooses paper and computer sci' do
      srand(3)
      expect(game.play("paper")).to include :lose
    end
    it 'returns the tie if player chooses sci and computer sci' do
      srand(3)
      expect(game.play("scissors")).to include :tie
    end
  end
end
