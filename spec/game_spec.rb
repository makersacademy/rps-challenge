require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "initializing" do
    it "stores arguments and returns them" do
      expect(game.player_1).to be player_1
    end
  end

  describe ".judge" do
    it "takes two arguments and calculates who won the round" do
      game.judge('rock', 'paper')
      expect(game.winner).to be player_2
    end
  end

  describe ".winner" do
    it "initializes to nil" do
      expect(game.winner).to be nil
    end

    it "returns who won the round" do
      game.judge('scissors', 'paper')
      expect(game.winner).to be player_1
    end
  end
end
