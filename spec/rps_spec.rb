require './lib/rps.rb'

describe Rps do
  let(:game) {described_class.new(player_1, player_2)}
  describe "tied game" do
    let(:player_1) {double :player, :selection => "R"}
    let(:player_2) {double :player, :selection => "R"}
    it "identifies a tie" do

      expect(game.decide).to eq :tie
    end
  end
  describe "winning player" do
    let(:player_1) {double :player, :selection => "R"}
    let(:player_2) {double :player, :selection => "S"}
    it "identifies a winner" do
      expect(game.decide).to eq :win
    end
  end
  describe "losing player" do
    let(:player_1) {double :player, :selection => "S"}
    let(:player_2) {double :player, :selection => "R"}
    it "identifies a winner" do
      expect(game.decide).to eq :lose
    end
  end
end
