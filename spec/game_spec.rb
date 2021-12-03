require 'game'

describe Game do
  let(:player1) { double("Player 1", :name => "Player 1")}
  let(:player2) { double("Player 2", :name => "Player 2")}
  let(:subject) { described_class.new(player1, player2) }

  describe "#get_outcome" do
    it "can declare the winner" do
      expect(subject.get_outcome("Rock", "Scissors")).to eq("Player 1")
    end

    it "can declare a draw" do
      expect(subject.get_outcome("Paper", "Paper")).to eq("Draw")
    end
  end
end