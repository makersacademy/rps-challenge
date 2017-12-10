require './lib/game'
require './lib/player'
require './lib/computer'

describe Game do
  subject(:game){described_class.new(xin, xinmac)}
  let(:xin) {double(:player, name: "Xin")}
  let(:xinmac) {double(:computer, name: "XinMac", weapon: :rock)}
  let(:weapon) { :rock }
  let(:weapon2) { :banana }

  describe "initialize" do
    it "accept a human player" do
      expect(game.player).to eq xin
    end

    it "accept a computer player" do
      expect(game.computer).to eq xinmac
    end
  end

  context "the chosen weapon is available" do
    it "gives the human player a weapon" do
      game.player_choice(weapon)
      expect(game.player_weapon).to eq :rock
    end

    it "gives the computer a weapon" do
      expect(game.computer_weapon).to eq :rock
    end
  end

  context "the chosen weapon is not available" do
    it "gives the human player a weapon" do
      expect{ game.player_choice(weapon2) }.to raise_error "not a possible weapon"
    end
  end


end
