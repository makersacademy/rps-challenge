require 'game'

describe Game do

  let(:player1) { double :player1, name: "Kirill" }
  let(:player2) { double :player2, name: "Chris" }
  let(:player3) { double :player3, name: "James" }
  subject(:game) { described_class.new(player1, player2) }

  describe "#result" do
    it "tells you if it's a draw" do
      allow(player1).to receive(:choice).and_return("rock")
      allow(player2).to receive(:choice).and_return("rock")
      expect(game.result).to eq "Draw!"
    end

    it "tells you if player 1 won" do
      allow(player1).to receive(:choice).and_return("lizard")
      allow(player2).to receive(:choice).and_return("spock")
      expect(game.result).to eq "#{player1.name} wins!"
    end

    it "tells you if player 2 won" do
      allow(player1).to receive(:choice).and_return("paper")
      allow(player2).to receive(:choice).and_return("scissors")
      expect(game.result).to eq "#{player2.name} wins!"
    end
  end

  describe "#add_player" do
    it "changes second player to the given one" do
      game.add_player(player3)
      expect(game.p2).to eq player3
    end
  end
end
