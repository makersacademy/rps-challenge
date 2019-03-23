require 'game'

describe Game do
  subject(:game) { described_class.new("China") }

  describe '.create' do
    it "creates an instance of itself" do
      game_instance = double(:game_instance)
      allow(described_class).to receive(:new).with("John").and_return(game_instance)
      Game.create("John")
      expect(Game.instance).to eq game_instance
    end
  end

  describe '#player1' do
    it "contains player 1's name" do
      expect(game.player1[:name]).to eq "China"
    end
  end

end
