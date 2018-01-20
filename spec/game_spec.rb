require 'game'

describe Game do

  let (:player) { double :player, move: :rock, name: :player }
  let (:computer) { double :computer, name: :computer}
  subject(:game) { described_class.new(player, computer) }

  describe "#initialize" do
    it 'initializes player' do
      expect(game.player).to eq player
    end
  end

  describe "#winner" do
    context "when computer chooses the winning move" do
      it "should return computer" do
        allow(computer).to receive(:move).and_return(:paper)
        expect(game.winner).to eq :computer
      end
    end
    context "when player chooses the winning move" do
      it "should return player" do
        allow(computer).to receive(:move).and_return(:scissors)
        expect(game.winner).to eq :player
      end
    end
    context "when both choose the same move" do
      it "should return draw" do
        allow(computer).to receive(:move).and_return(:rock)
        expect(game.winner).to eq "No one"
      end
    end
  end
end

