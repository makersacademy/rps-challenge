require "player"

describe Player do

  subject(:player) { described_class.new("Jim") }
  context "#initialize" do

    it "initializes with a given name" do
      expect(player.name).to eq("Jim")
    end
  end
end
