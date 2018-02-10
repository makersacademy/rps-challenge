require "game"

describe Game do

  let(:player_1) { double "Jim" }
  subject(:game) { described_class.new(player_1) }

  context "#initialize" do

    it "initializes with a player" do
      expect(game.player_1).to eq(player_1)
    end
  end
end
