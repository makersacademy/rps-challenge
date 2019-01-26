require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) { double :player }
  let(:player2) { double :computer }

  describe "#player1" do
    it "register a player" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "plays with computer" do
      expect(game.player2).to eq player2
    end
  end

  describe "#random_rps" do
    it "choose paper" do
      allow(player2).to receive(:random_rps).and_return "PAPER"
      expect(game.weapon2).to eq "PAPER"
    end
  end

  describe "#outcomes" do
    it "Player picks ROCK and computer picks PAPER" do
      expect()
    end

  end

end
