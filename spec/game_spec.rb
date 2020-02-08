require "game"

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) { { "name" => "Mrtl", "choice" => :rock, "opp_choice" => :scissors } }

  describe "#name" do
    it "returns the player name" do
      expect(game.name).to eq "Mrtl"
    end
  end

  describe "#choice" do
    it "returns the player choice" do
      expect(game.choice.to_s.capitalize).to eq "Rock"
    end
  end

  describe "#opp_choice" do
    it "returns the opponent choice" do
      expect(game.opp_choice.to_s.capitalize).to eq "Scissors"
    end
  end

  context "end game" do
    subject(:win_turn) { game }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { { "name" => "Mrtl", "choice" => :rock, "opp_choice" => :paper } }
    let(:draw_options) { { "name" => "Mrtl", "choice" => :rock, "opp_choice" => :rock } }

    describe "#win?" do
      it "returns true if player plays rock and opponent plays scissors" do
        expect(win_turn.win?).to eq true
      end
    end

    describe "#lose?" do
      it "returns true if player plays rock and opponent plays paper" do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe "#draw?" do
      it "returns true if player plays rock and opponent plays rock" do
        expect(draw_turn.draw?).to eq true
      end
    end
  end
end
