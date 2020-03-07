require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Kuba", "player_choice" => :rock, "computer_choice" => :rock } }

  describe "#player_name" do
    it "returns player name" do
      expect(turn.player_name).to eq("Kuba")
    end
  end

  describe "#player_choice" do
    it "returns players choice" do
      expect(turn.player_choice).to eq(:rock)
    end
  end

  describe "#computer choice" do
    it "returns computers choice" do
      expect(turn.computer_choice).to eq(:rock)
    end
  end
end
