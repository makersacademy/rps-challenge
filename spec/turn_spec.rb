require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Kuba", "player_choice" => :rock, "computer_choice" => :scissors } }
  subject(:turn_lose) { described_class.new(options1) }
  let(:options1) { { "player_name" => "Kuba", "player_choice" => :rock, "computer_choice" => :paper } }
  subject(:turn_draw) { described_class.new(options2) }
  let(:options2) { { "player_name" => "Kuba", "player_choice" => :rock, "computer_choice" => :rock } }

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
        # allow(turn).to receive(:computer_choice) { :paper }
        expect(turn_lose.lose).to eq(true)
      end
    end
  end
  describe "#draw" do
    it "returns true if player_choice == computer_choice" do
      # allow(turn).to receive(:computer_choice) { :rock }
      expect(turn_draw.draw).to eq(true)

    end
  end
end
