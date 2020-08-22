require "game"

describe Game do 
  let(:player_1) { double("player_1") }
  let(:player_2) { double("player_2") }
  let(:game) { Game.new(player_1, player_2) }

  it { expect(game.players).to match_array([player_1, player_2]) }
  
  describe "#instance" do
    it "return an instance of the created class" do 
      new_game = Game.create("Spas", "Gosho")
      expect(Game.instance).to eq new_game
    end 
  end

  describe "#player_1" do 
    it "return the instance of the first player in the game" do 
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do 
    it "return the instance of the second player in the game" do 
      expect(game.player_2).to eq player_2
    end
  end

  describe "#winner" do 
    it "return the winer of the game" do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Scissors")
      expect(game.winner(player_1, player_2)).to eq player_1
    end

    it "return the winer of the game" do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Rock")
      expect(game.winner(player_1, player_2)).to eq "Draw"
    end

  end

end
