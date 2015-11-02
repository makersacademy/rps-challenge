require 'game'

describe Game do

subject(:game) {described_class.new(player_choice,computer_choice)}
let(:player_choice) {double(:player_choice)}
let(:computer_choice) {double(:computer_choice)}

  describe "#initialization" do
    it "receives player_choice" do
      expect(game.player_choice).to eq player_choice
    end
    it "receives computer_choice" do
      expect(game.computer_choice).to eq computer_choice
    end
  end

  describe "#game_result" do
    it "announce the result of the game" do
      # allow(game).to receive(:dual).and_return([:rock, :rock])
      dual= [:rock, :rock]
      expect(game.result(dual)).to eq "It's a tie"
    end
  end
end
