require 'player'

describe Player do

  let(:player) { Player.new("Farzan") }

  context "name" do

    it "returns name of the player" do
      expect(player.name).to eq "Farzan"
    end 

  end 
  
end
