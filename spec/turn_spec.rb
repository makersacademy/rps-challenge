require "turn"

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Rocky", "player_attack" => :rock, "computer_attack" => :scissors} }

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
      expect(turn.computer_attack).to eq :scissors
    end
  end

  context "end game" do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Rocky", "player_attack" => :rock, "computer_attack" => :paper} }
    let(:draw_options) { {"player_name" => "Rocky", "player_attack" => :rock, "computer_attack" => :rock} }

    describe "#win?" do
      it "returns true if player_attack is :rock and computer_attack is :scissors" do
        expect(win_turn.win?).to eq true
      end
    end

    describe "#draw?" do
      it "returns true if player_attack is :rock and computer_attack is :rock" do
        expect(draw_turn.draw?).to eq true
      end
    end

    describe "#lose?" do
      it "returns true if player_attack is :rock and computer_attack is :paper" do
        expect(lose_turn.lose?).to eq true
      end
    end
  end
end