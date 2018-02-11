require "player"

describe Player do

  subject(:player) { described_class.new("Jim") }

  context "#initialize" do

    it "initializes with a given name" do
      expect(player.name).to eq("Jim")
    end

  end

  context "#choose_move" do

    it "stores the players move as a symbol" do
      player.choose_move("rock")
      expect(player.move).to eq(:rock)
    end
  end
end
