require 'game'

describe Game do
  subject(:game) { described_class.new(name, user, computer) }
  let(:name) { "Bob" }
  let(:user) { "Rock" }
  let(:computer) { "Paper" }

  describe '#name' do
    it 'returns the name of the player' do
      expect(game.name).to eq "Bob"
    end
  end
  describe "#win?" do
    it 'returns lose' do
      expect(game.win?).to eq "You lose, Paper beats Rock"
    end
  end
end
