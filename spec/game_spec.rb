require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe "#result" do
    context "draw" do
      it "if player weapon is same as computer weapon" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :draw
      end
    end

    context "win" do
      it "if player weapon beats computer weapon" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end

    context "lose" do
      it "if computer weapon beats player weapon" do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(computer).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :lose
      end
    end
  end

end
