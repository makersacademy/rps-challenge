require "turn"

describe Turn do

  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_1_name" => "Asad", "player_1_move" => :rock, "opponent_move" => :rock } }

  describe "#player_name" do
    it "returns the players name" do
      expect(turn.player_1_name).to eq "Asad"
    end
  end

  describe "#player_move" do
    it "returns the players move" do
      expect(turn.player_1_move).to eq :rock
    end
  end

  describe "#opponent_move" do
    it "returns the opponents move" do
      expect(turn.opponent_move).to eq :rock
    end
  end

end
