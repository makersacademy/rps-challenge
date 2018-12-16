require 'game'

describe Game do

  let(:player_1) { double :player_1, name: "Simon", options: "rock" }
  let(:player_2) { double :player_2, name: "computer", options: "paper" }
  subject(:testgame) { Game.new(player_1, player_2) }

  describe "#result" do
    it "tells you if it's a draw" do
      allow(player_1).to receive(:options).and_return("rock")
      allow(player_2).to receive(:options).and_return("rock")
      expect(testgame.result).to eq "Draw!"
    end

    it "tells you if player 1 won" do
      allow(player_1).to receive(:options).and_return("rock")
      allow(player_2).to receive(:options).and_return("scissors")
      expect(testgame.result).to eq "#{player_1.name} wins!"
    end

    it "tells you if player 2 won" do
      allow(player_1).to receive(:choice).and_return("rock")
      allow(player_2).to receive(:choice).and_return("paper")
      expect(testgame.result).to eq "#{player_2.name} wins!"
    end
  end
end
