require 'game'

describe Game do
  let(:player) { Player.new("Farzan") }
  let(:game) { Game.new(player) }

  context "player" do

    it "returns player when initializes" do
      expect(game.player.name).to eq "Farzan"
    end 

  end 

  context "play" do

    it "player choose rock and wins" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("scissors")
      game.rock
      expect(game.win).to eq true
    end 

    it "player choose scissors and loses" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("rock")
      game.scissors
      expect(game.win).to eq false
    end 

    it "player choose paper and ties" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("paper")
      game.paper
      expect(game.win).to eq nil
    end 

  end
  
  context "return messages after play" do

    it "returns message after winning" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("scissors")
      game.rock
      expect(game.message).to eq "You've won! Well done!"
    end 
    
    it "returns message after losing" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("rock")
      game.scissors
      expect(game.message).to eq "You've lost! Try again!"
    end 

    it "returns message after a tie" do
      allow_any_instance_of(Game).to receive(:rpc_play).and_return("paper")
      game.paper
      expect(game.message).to eq "It's a tie! Try again!"
    end 
    
  end

end
