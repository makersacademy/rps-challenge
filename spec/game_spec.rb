require "game"

describe Game do
  describe "#calculate_result" do
    let(:player_win_message) { "YOU WIN!" }
    let(:computer_win_message) { "COMPUTER WINS!" }
    let(:draw_message) { "IT'S A DRAW!" }

    context "when the computer plays ROCK" do
      it "returns computer_win_message message when player move is SCISSORS" do
        game = described_class.new("SCISSORS")
        game.instance_variable_set(:@computer_move, "ROCK")
        expect(game.calculate_result).to eq computer_win_message
      end

      it "returns draw_message message when player move is ROCK" do
        game = described_class.new("ROCK")
        game.instance_variable_set(:@computer_move, "ROCK")
        expect(game.calculate_result).to eq draw_message
      end

      it "returns player_win_message message when player move is PAPER" do
        game = described_class.new("PAPER")
        game.instance_variable_set(:@computer_move, "ROCK")
        expect(game.calculate_result).to eq player_win_message
      end
    end
  end
end
