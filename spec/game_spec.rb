require 'game'
require 'player'

describe Game do

  let(:game) { described_class.new(player, computer) }
  let(:player) { Player.new("Bob") }
  let(:computer) { Computer.new }

  describe "#player" do
    it "returns the player" do
      expect(game.player.name).to eq "Bob"
    end
  end

  describe "#player option" do
    it "returns the selected option" do
      game.select_option("Rock")
      expect(game.choice).to eq :rock
    end
  end

  describe "#result" do
    context "#player wins" do
      it "checks both choices and chooses the winner" do
        game.get_result(:rock, :scissors)
        expect(game.result).to eq(:win)
      end
    end

    context "#player loses" do
      it "checks both choices and chooses the winner" do
        game.get_result(:scissor, :rock)
        expect(game.result).to eq(:lose)
      end
    end

    context "#draw" do
      it "checks both choices and chooses the winner" do
        game.get_result(:paper, :paper)
        expect(game.result).to eq(:draw)
      end
    end
  end
end
