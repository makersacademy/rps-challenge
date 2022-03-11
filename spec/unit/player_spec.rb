require 'player'

describe Player do

  let(:player) { Player.new("Archie") }

  context "name" do

    it "returns name of the player" do
      expect(player.name).to eq "Archie"
    end 

  end 

end
