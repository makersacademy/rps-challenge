require 'rps_game'

describe Rps_game do
  subject(:rps_game) { described_class.new }

  let(:player_1) {double(:weapon)}
  let(:player_2) {double(:weapon)}

  describe "#outcome" do
    it "returns the outcome of player_1_weapon vs player_2_weapon" do
      allow(player_1).to receive(:weapon) { "Rock" }
      allow(player_2).to receive(:weapon) { "scissors" }
      expect(rps_game.outcome(player_1.weapon, player_2.weapon)).to eq "win"
    end
  end

end
