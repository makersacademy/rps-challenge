require 'rps_game'

describe Rps_game do
  subject(:rps_game) { described_class.new(player_1, player_2) }
  subject(:player) { Player.new("Alex", "Rock") }

  let(:player_1) { double :a_player, weapon: "Rock", name: "Alex", outcome: "" }
  let(:player_2) { double :a_player, weapon: "scissors", name: "AI Overlord", outcome: "" }

  #before :each do
    #allow(player_1).to receive(:weapon) { "Rock" }
    #allow(player_1).to receive(:name) { "Alex" }
    #allow(player_1).to receive(:outcome) { "" }
    #allow(player_2).to receive(:weapon) { "scissors" }
    #allow(player_2).to receive(:name) { "AI Overlord" }
    #allow(player_2).to receive(:outcome) { "" }
  #end

  describe 'returns player information' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Alex"
    end
  end

  describe "#outcome" do
    it "returns the outcome of player_1_weapon vs player_2_weapon" do
      expect(rps_game.outcome(player_1.weapon, player_2.weapon)).to eq "win"
    end

    it "sets the result of #outcome to the correct player" do
      expect{ rps_game.outcome(player_1.weapon, player_2.weapon) }.to change{ player_1.outcome }.to "win"
    end
  end

end
