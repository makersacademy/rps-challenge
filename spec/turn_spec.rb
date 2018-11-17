require "turn"

describe Turn do

  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_1_name" => "Asad", "player_1_move" => :Scissors, "opponent_move" => :Paper } }

  describe "#player_name" do
    it "returns the players name" do
      expect(turn.player_1_name).to eq "Asad"
    end
  end

  describe "#player_move" do
    it "returns the players move" do
      expect(turn.player_1_move).to eq :Scissors
    end
  end

  describe "#opponent_move" do
    it "returns the opponents move" do
      expect(turn.opponent_move).to eq :Paper
    end
  end

  context "End game results" do
    subject(:win_turn) { turn }
    subject(:lose_turn) { described_class.new(lose_options) }
    subject(:draw_turn) { described_class.new(draw_options) }

    let(:lose_options) { {"player_1_name" => "Asad", "player_1_move" => :Scissors, "opponent_move" => :Rock} }
    let(:draw_options) { {"player_1_name" => "Asad", "player_1_move" => :Scissors, "opponent_move" => :Scissors} }

    describe "#win?" do
      it "return true if Player_move is Scissors and opponent move is Paper" do
        expect(win_turn.win?).to eq true
      end
    end

    describe "#lose?" do
      it "return true if Player_move is Scissors and opponent move is Rock" do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe "#draw?" do
      it "return true if Player_move is Scissors and opponent move is Scissors" do
        expect(draw_turn.draw?).to eq true
      end
    end

  end

end
