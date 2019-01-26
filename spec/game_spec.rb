require 'game'

describe Game do
  subject(:game) {described_class.new(player)}
  let(:player1) { double :player }
  let(:computer) {double :player }

  describe "#player" do
    it "register a player" do
      expect(game.player).to eq player
    end
  end

  describe "#random_rps" do
    it "choose paper" do
      allow(computer).to receive(random_rps).and_return "PAPER"
    end
  end

end
