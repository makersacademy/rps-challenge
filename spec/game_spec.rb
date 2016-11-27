require 'spec_helper'
require "./lib/game"

describe Game do

  subject(:game) {described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) {double :computer}

  context "setup" do
    it "should initialize with a player" do
      expect(game.player).to eq player
    end
  end

context "logic" do
  context "player wins" do
    it "expects rock to beat scissors" do
      game.selections("Rock", "Scissors")
      expect(game.player_wins?).to be true
    end

    it "expects paper to beat rock" do
      game.selections("Paper", "Rock")
      expect(game.player_wins?).to be true
    end

    it "expects scissors to beat paper" do
      game.selections("Scissors", "Paper")
      expect(game.player_wins?).to be true
    end
  end

  context "computer wins" do
    it "expects rock to beat scissors" do
      game.selections("Scissors", "Rock")
      expect(game.player_wins?).to be false
    end

    it "expects paper to beat rock" do
      game.selections("Rock", "Paper")
      expect(game.player_wins?).to be false
    end

    it "expects scissors to beat paper" do
      game.selections("Paper", "Scissors")
      expect(game.player_wins?).to be false
    end
  end
end

  context "#check_winner" do
    it "should set the winner variable to the player name" do
      allow(player).to receive(:name).and_return("Dan")
      allow(game).to receive(:player_wins?).and_return true
      expect(game.check_winner).to eq "Dan"
    end
  end

end
