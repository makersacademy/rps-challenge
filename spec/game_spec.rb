require 'game'

describe Game do
  let(:player1) { double("Player 1", :name => "Player 1")}
  let(:player1) { double("Player 1", :name => "Player 2")}
  let(:subject) { described_class.new }

  describe "#get_outcome" do
    it "can declare the winner" do
      expect(subject.outcome("Rock", "Scissors")).to eq("Player 1")
    end

    it "can declare a draw" do
      expect(subject.outcome("Paper", "Paper")).to eq("Draw")
    end
  end
end