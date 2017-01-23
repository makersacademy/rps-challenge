require 'round.rb'

describe Round do

  let(:round_class) { described_class }
  let(:player_1_move) { :lizard }
  let(:player_2_move) { :spock }
  let(:rules_handler) { class_double("RulesHandler") }
  let(:message_handler) { instance_double("MessageHandler") }
  let(:game) { instance_double("Game") }
  let(:winning_move) { [:player_1, [:lizard, :spock, "poisons"]] }

  before do
    MessageHandler.instance_variable_set("@message_handler_instance", message_handler)
  end

  describe "#round_instance" do
    it "contains latest round instance" do
      new_round = described_class.new(player_1_move: player_1_move)
      expect(round_class.round_instance).to eq new_round
    end
  end

  subject(:round) { described_class.new(player_1_move: player_1_move) }

  describe "#player_1_move" do
    it "returns player 1's move" do
      expect(round.player_1_move).to eq player_1_move
    end
  end

  describe "#winning_move" do
    it 'defaults to nil' do
      expect(round.winning_move).to be nil
    end
  end

  describe "#results_message" do
    it { is_expected.to respond_to(:result_message) }
  end

  context "Draw" do
    let(:player_1_move) { :lizard }
    let(:player_2_move) { :lizard }
    let(:draw_round) { described_class.new(player_1_move: player_1_move) }
    before do
      allow(message_handler).to receive(:draw_result_message) { nil }
    end
    describe "#draw" do
      it "returns true if player moves are the same" do
        draw_round.finish_round(player_2_move: player_2_move)
        expect(draw_round.draw?).to be true
      end
    end
    describe "#finish_round" do
      before(:each) do
        allow(rules_handler).to receive(:decide_winner) { winning_move }
        allow(message_handler).to receive(:draw_result_message) { "Lizard draws with Lizard!" }
      end
      it "sets player 2 move" do
        expect{draw_round.finish_round(player_2_move: player_2_move)}.to change{draw_round.player_2_move}
      end
      it "winning move stays nil" do
        draw_round.finish_round(player_2_move: player_2_move)
        expect(round.winning_move).to be nil
      end
      it "sets result message to draw message" do
        draw_round.finish_round(player_2_move: player_2_move)
        expect(draw_round.result_message).to eq "Lizard draws with Lizard!"
      end
    end
  end

  context "Player 1 wins" do
    describe "#finish_round" do
      before(:each) do
        allow(rules_handler).to receive(:decide_winner) { winning_move }
        allow(message_handler).to receive(:battle_result_message) { "Lizard poisons Spock!" }
      end
      it "sets player 2 move" do
        expect{round.finish_round(player_2_move: player_2_move)}.to change{round.player_2_move}
      end
      it "sets winning_move" do
        round.finish_round(player_2_move: player_2_move)
        expect(round.winning_move).to eq winning_move
      end
      it "sets result message to battle win message" do
        round.finish_round(player_2_move: player_2_move)
        expect(round.result_message).to eq "Lizard poisons Spock!"
      end
    end
  end
end
