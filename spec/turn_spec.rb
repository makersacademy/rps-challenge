require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "name" => "Mrtl", "choice" => :rock, "opp_choice" => :rock } }

  describe "#name" do
    it "returns the player name" do
      expect(turn.name).to eq "Mrtl"
    end
  end

  describe "#choice" do
    it "returns the player choice" do
      expect(turn.choice.to_s.capitalize).to eq "Rock"
    end
  end

  describe "#opp_choice" do
    it "returns the opponent choice" do
      expect(turn.opp_choice.to_s.capitalize).to eq "Rock"
    end
  end
end
