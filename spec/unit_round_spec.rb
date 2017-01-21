require 'round.rb'

describe Round do

  let(:round_class) { described_class }
  let(:player_1_move) { :lizard }

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

end
