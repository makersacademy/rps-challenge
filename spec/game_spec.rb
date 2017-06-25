

describe Game do

  let(:player) { double("player") }
  let(:computer) { double("computer") }
  subject(:game) { described_class.create(player, computer) }

  describe "attributes" do
    it { is_expected.to respond_to(:computer) }
    it { is_expected.to respond_to(:player) }
  end

  describe "#result" do

    context "when rock:rock" do
      it "returns draw" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :draw
      end
    end

    context "when rock:paper" do
      it "returns draw" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :lose
      end
    end

    context "when rock:scissors" do
      it "returns draw" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end

  end
end
