require 'game'

describe Game do

  subject(:game) { Game.new("Hannah", "Paper", player_class, computer_class) }
  let(:player_class) { double :player_class, new: player }
  let(:player) { double :player, turn: "Paper" }
  let(:computer_class) { double :computer_class, new: computer }
  let(:computer) { double :computer, turn: "Rock" }

  describe "#computers_turn" do
    it "returns the computer's turn" do
      expect(subject.computers_turn).to eq "Rock"
    end
  end

  describe "#winner" do
    context "player chooses paper, computer chooses rock" do
      it "returns that the player wins" do
        expect(subject.winner).to eq "Player"
      end
    end

    context "player chooses paper, computer chooses scissors" do
      it "returns that the computer wins" do
        allow(computer).to receive(:turn) { "Scissors" }
        expect(subject.winner).to eq "Computer"
      end
    end

    context "player chooses paper, computer chooses paper also" do
      it "returns that it's a draw" do
        allow(computer).to receive(:turn) { "Paper" }
        expect(subject.winner).to eq "Draw"
      end
    end
  end

end
