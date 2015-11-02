require 'game'

describe Game do

subject(:game) {described_class.new(player,computer)}
let(:player) {double(:player, name: 'Amy', choice: :rock)}
let(:computer) {double(:computer, choice: :rock)}


  describe "#initialization" do
    it "receives player" do
      expect(game.player).to eq player
    end
    it "receives computer" do
      expect(game.computer).to eq computer
    end
  end

  describe '#player name' do
    it 'gives player name' do
      expect(game.player_name).to eq 'Amy'
    end
  end

  describe '#player choice'do
    it 'gives player\'s choice' do
      expect(game.player_choice). to eq :rock
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
