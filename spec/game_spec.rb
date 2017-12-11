require 'game'

describe Game do
  let(:game) { described_class.new(player, computer) }
  let(:player) { double(:player) }
  let(:computer) { double(:computer, weapon_choice: :rock) }

  describe "#initalize" do
    it "should initalize with a new player" do
      expect(game.player).to eq player
    end

    it "should initalize with a new player" do
      expect(game.computer).to eq computer
    end
  end

  describe "#result" do
    it "shows the computer choice" do
      expect(computer.weapon_choice).to eq :rock
    end

    it "is a win if the player won" do
      expect(game.result(:paper)).to eq "You won!"
    end

    it "is a lose if the player lost" do
      expect(game.result(:scissors)).to eq "You lost!"
    end

    it "is a draw if both players choose the same weapon" do
      expect(game.result(:rock)).to eq "You drew!"
    end
  end
end
