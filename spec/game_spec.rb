require 'game'
require 'player'

describe Game do

  let(:game) { described_class.new(player) }
  let(:player) { Player.new("Bob") }

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

  describe "#generate_rand_option" do
    it "randomly selects an option out of rock/paper/scissors" do
      array = [:rock, :paper, :scissors]
      expect(array).to include(game.generate_rand_option)
    end
  end
end
