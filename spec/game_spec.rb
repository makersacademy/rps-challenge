require "game"

describe Game do 
  let(:game) { Game.new("player1", "player2") }

  it { expect(game.players).to match_array(["player1", "player2"]) }
  
  describe "#instance" do
    it "return an instance of the created class" do 
      new_game = Game.create("Spas", "Gosho")
      expect(Game.instance).to eq new_game
    end 
  end

  describe "#player_1" do 
    it "return the instance of the first player in the game" do 
      expect(game.player_1).to eq "player1"
    end
  end

  describe "#player_2" do 
    it "return the instance of the second player in the game" do 
      expect(game.player_2).to eq "player2"
    end
  end

end
