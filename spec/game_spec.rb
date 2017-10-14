require 'game'

describe Game do


let(:rock) { double(:rock) }
let(:computer) { double(:computer, choose: "Rock")}
let(:player) { double(:player, name: "Lady Macbeth") }
subject(:game) { described_class.new(player, computer) }

  describe "#play" do

      it "returns 'Wins' when player chooses 'Paper' and computer chooses 'Rock'" do
        expect(game.play("Paper")).to eq "Wins"
      end

      it "returns 'Loses' when player chooses 'Scissors' and computer chooses 'Rock'" do
        expect(game.play("Scissors")).to eq "Loses"
      end

      it "returns 'Draw' when player chooses 'Rock' and computer chooses 'Rock' " do
        expect(game.play("Rock")).to eq "Draw"
      end

    end

  describe "#result_string" do

    it "returns string for draw" do
      allow(game).to receive(:result) { "Draw" }
      expect(game.result_string).to eq("It's a draw!")
    end
    it "returns string for win" do
      allow(game).to receive(:result) { "Wins" }
      expect(game.result_string).to eq("Lady Macbeth Wins!")
    end
    it "returns string for lose" do
      allow(game).to receive(:result) { "Loses" }
      expect(game.result_string).to eq("Lady Macbeth Loses!")
    end
  end
end
