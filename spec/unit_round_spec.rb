require 'round.rb'

describe Round do

  let(:round_class) { described_class }
  let(:player_1_move) { :lizard }
  let(:player_2_move) { :spock }
  let(:rules_handler) { class_double("RulesHandler") }
  let(:winning_move) { [:player_1, [:lizard, :spock, "poisons"]] }

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


  describe "#finish_round" do
    before(:each) do
      allow(rules_handler).to receive(:decide_winner) { winning_move }
    end
    it "sets player 2 move" do
      expect{round.finish_round(player_2_move: player_2_move)}.to change{round.player_2_move}
    end
    it "sets winning_move" do
      round.finish_round(player_2_move: player_2_move)
      expect(round.winning_move).to eq winning_move
    end
  end

end
