require './lib/game'

describe Game do
  let(:player01) { double :player01, :name => "Moe Syzslak", :weapon => "Rock" }
  let(:player02) { double :player02, :name => "The Computer", :weapon => "Paper" }
  let(:player03) { double :player03, :name => "The Computer", :weapon => "Scissors" }
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

    it "will return 'You win!'" do
      game02 = Game.new(player01, player03)
      expect(game02.outcome).to eq("You win!")
    end

    it "will return 'it's a draw!'" do
        game03 = Game.new(player01, player01)
        expect(game03.outcome).to eq("It's a draw!")
    end
  end

end
