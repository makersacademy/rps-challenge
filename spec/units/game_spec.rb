require 'game'

describe Game do 
  subject(:game) { described_class.new("Rock") }
  describe "#initialize" do 
    it "knows the players choice" do
      expect(game.player_move).to eq "Rock"
    end 
  end 


  
end
