require 'game'

describe Game do
  subject(:game) { described_class.new("China") }

  describe '.create' do
    it "creates an instance of itself" do
      Game.create("John")
      expect(described_class.instance.player1).to eq "John"
    end
  end

  describe '#player1' do
    it "returns player 1's name" do
      expect(game.player1).to eq "China"
    end
  end

end
