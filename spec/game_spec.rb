require 'game'

describe Game do

subject(:game) {described_class.new(player_choice,computer_choice)}
let(:player_choice) {double(:player_choice)}
let(:computer_choice) {double(:computer_choice)}


  describe "#initialization" do
    it "receives player_choice" do
      expect(game.player_choice).to eq player_choice
    end
    it "receives computer_choice" do
      expect(game.computer_choice).to eq computer_choice
    end
  end

  describe "#winner" do
    context "when it is a tie" do
      it "both player and computer play rock" do
          allow(game).to receive(:dual).and_return([:rock, :rock])
          expect(game.result).to eq "It's a tie"
      end
    end
    context "when player wins " do
      it "player plays rock & computer plays scissor" do
          allow(game).to receive(:dual).and_return([:rock, :scissor])
          expect(game.result).to eq "You win"
          p @dual
      end
    end
    context "when player loses" do
      it "player plays rock & computer plays paper" do
          allow(game).to receive(:dual).and_return([:rock, :paper])
          expect(game.result).to eq "You lose"
      end
    end
  end

end
