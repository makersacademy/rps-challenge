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

end
