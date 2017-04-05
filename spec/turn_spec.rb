require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Rocky", "player_attack" => :rock, "computer_attack" => :rock} }

  describe "#player_name" do
    it "returns player name" do
      expect(turn.player_name).to eq "Rocky"
    end
  end

  describe "#player_attack" do
    it "returns player attack" do
      expect(turn.player_attack).to eq :rock
    end
  end

  describe "#computer_attack" do
    it "returns a computer attack" do
      expect(turn.computer_attack).to eq :rock
    end
  end
end