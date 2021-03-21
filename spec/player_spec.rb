require './app'
require './lib/player'
 
describe 'Player' do 
  player = Player.new("Cap")
  
  describe "#name" do 
    it "returns the player's name" do 
      expect(player.name).to eq 'Cap' 
    end 
  end 

  describe "#play" do 
    it "returns draw if there is a draw" do 
      expect(player.play("Rock", "Rock")).to eq "It's a draw!"
    end 
    it "returns player wins" do 
      expect(player.play("Rock", "Scissors")).to eq "Cap wins!"
    end 
    it "returns player lost" do 
      expect(player.play("Rock", "Paper")).to eq "Cap lost!"
    end 
  end 
end 
