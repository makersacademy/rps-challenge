require './lib/game'

describe Game do
  let(:player01) { double :player01, :name => "Moe Syzslak", :weapon => "Rock" }
  let(:player02) { double :player02, :name => "The Computer", :weapon => "Paper" }
  let(:game) { Game.new(player01, player02) }

  describe "returns the name of the players" do
    it "will return the name of player01" do
      expect(game.player01.name).to eq("Moe Syzslak")
    end

    it "will return the name of player02" do
      expect(game.player02.name).to eq("The Computer")
    end
  end

  describe "#outcome" do
    it "will return the result of the RPS battle" do
      expect(game.outcome).to eq("You lose!")
    end
  end

end
