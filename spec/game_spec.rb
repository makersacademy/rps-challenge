require './lib/game'

describe Game do
  let(:player01) { double :player01, :name => "Moe Syzslak" }
  let(:player02) { double :player02, :name => "The Computer" }
  let(:game) { Game.new(player01, player02) }

  describe "returns the name of the players" do
    it "will return the name of player01" do
      expect(game.player01.name).to eq("Moe Syzslak")
    end

    it "will return the name of player02" do
      expect(game.player02.name).to eq("The Computer")
    end
  end

end
