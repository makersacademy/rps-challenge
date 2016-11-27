require 'spec_helper'
require "./lib/player"

describe Logic do

  subject(:logic) {described_class.new}

  context "player wins" do
    it "expects rock to beat scissors" do
      logic.input_data("Rock", "Scissors")
      expect(logic.player_wins?).to be true
    end

    it "expects paper to beat rock" do
      logic.input_data("Paper", "Rock")
      expect(logic.player_wins?).to be true
    end

    it "expects scissors to beat paper" do
      logic.input_data("Scissors", "Paper")
      expect(logic.player_wins?).to be true
    end
  end

  context "computer wins" do
    it "expects rock to beat scissors" do
      logic.input_data("Scissors", "Rock")
      expect(logic.player_wins?).to be false
    end

    it "expects paper to beat rock" do
      logic.input_data("Rock", "Paper")
      expect(logic.player_wins?).to be false
    end

    it "expects scissors to beat paper" do
      logic.input_data("Paper", "Scissors")
      expect(logic.player_wins?).to be false
    end
  end

end
