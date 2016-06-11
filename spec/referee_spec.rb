require 'spec_helper'
require 'referee'

describe Referee do
  subject(:referee) { described_class.new }

  describe "#result" do
    it "returns moves and result of bout" do
      expect(referee.result("rock","paper")).to eq ["rock","paper","player2"]
    end
  end

  describe "#ai_move" do
    it "chooses a move" do
      moves = ["rock","paper","scissors","spock","lizard"]
      expect(moves).to include(referee.ai_move)
    end
  end

  describe "#judge" do
    it "returns winner of bout" do
      expect(referee.judge("rock","paper")).to eq "player2"
    end

    it "returns 'draw' in event of tie" do
      expect(referee.judge("rock","rock")).to eq "draw"
    end
  end

end
