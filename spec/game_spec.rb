require './lib/game'
require './lib/player'
require './lib/computer'

describe Game do
  subject(:game){described_class.new(xin, xinmac)}
  let(:xin) {double(:player, name: "Xin")}
  let(:xinmac) {double(:computer, name: "XinMac")}
  let(:weapon) { :rock }

  describe "initialize" do
    it "accept a human player" do
      expect(game.player).to eq xin
    end

    it "accept a computer player" do
      expect(game.computer).to eq xinmac
    end
  end
end
