require 'game'

describe Game do
  subject(:game) {described_class.new(player,weapon)}
  let(:player) { double :player }
  let(:weapon) { double :weapon }

  describe "#player" do
    it "register a player" do
      expect(game.player).to eq player
    end
  end

  describe "#random_rps" do
    it "choose paper" do
      allow(game).to receive(:random_rps).and_return "PAPER"
      expect(game.computer).to eq "PAPER"
    end
  end

  describe "#outcomes" do
    it "Player picks ROCK and computer picks PAPER" do
      expect()
    end

  end

end
