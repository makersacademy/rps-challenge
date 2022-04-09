require 'result'

describe Result do
  let(:player) { double "player" }
  let(:computer) { double "computer" }
  let(:result) { described_class.new(player, computer) }

  describe "#winner" do
    it "Player wins with rock" do
      allow(player).to receive(:move).and_return("Rock")
      allow(computer).to receive(:move).and_return("Scissors")
      expect(result.winner).to eq(player)
    end

    it "Player wins with paper" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Rock")
      expect(result.winner).to eq(player)
    end

    it "Player wins with scissors" do
      allow(player).to receive(:move).and_return("Scissors")
      allow(computer).to receive(:move).and_return("Paper")
      expect(result.winner).to eq(player)
    end

    it "Player ties with rock" do
      allow(player).to receive(:move).and_return("Rock")
      allow(computer).to receive(:move).and_return("Rock")
      expect(result.winner).to eq("Tie")
    end

    it "Player ties with paper" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Paper")
      expect(result.winner).to eq("Tie")
    end

    it "Player ties with scissors" do
      allow(player).to receive(:move).and_return("Scissors")
      allow(computer).to receive(:move).and_return("Scissors")
      expect(result.winner).to eq("Tie")
    end

    it "Player loses with rock" do
      allow(player).to receive(:move).and_return("Rock")
      allow(computer).to receive(:move).and_return("Paper")
      expect(result.winner).to eq(computer)
    end

    it "Player loses with paper" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Scissors")
      expect(result.winner).to eq(computer)
    end

    it "Player loses with scissors" do
      allow(player).to receive(:move).and_return("Scissors")
      allow(computer).to receive(:move).and_return("Rock")
      expect(result.winner).to eq(computer)
    end

  end

end
