require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Kuba", "player_choice" => :rock, "computer_choice" => :scissors } }

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
      expect(turn.computer_choice).to eq(:scissors)
    end
  end

  context "end game" do
    describe "#win" do
      it "returns true if player_choice is :rock and computer_choice is :scissors" do
        expect(turn.win).to eq(true)
      end
    end
    describe "#lose" do
      it "returns true if player_choice is :rock and computer_choice is :paper" do
        expect(turn.lose).to eq(true)
      end
    end
  end
  describe "#draw" do
    it "returns true if player_choice == computer_choice" do
      expect(turn.draw).to eq(true)
    end
  end
end
