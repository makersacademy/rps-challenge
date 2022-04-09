require 'result'

describe Result do
  let(:player) { double "player" }
  let(:computer) { double "computer" }
  let(:result) { described_class.new(player, computer) }

  describe "#winner" do
    it "Player wins with rock" do
      expect(result.winner).to eq(player)
    end

    it "Player wins with paper" do
      expect(result.winner).to eq(player)
    end

    it "Player wins with scissors" do
      expect(result.winner).to eq(player)
    end

    it "Player ties with rock" do
      expect(result.winner).to eq(nil)
    end

    it "Player ties with paper" do
      expect(result.winner).to eq(nil)
    end

    it "Player ties with scissors" do
      expect(result.winner).to eq(nil)
    end

    it "Player loses with rock" do
      expect(result.winner).to eq(computer)
    end

    it "Player loses with rock" do
      expect(result.winner).to eq(computer)
    end

    it "Player loses with rock" do
      expect(result.winner).to eq(computer)
    end

  end

end

