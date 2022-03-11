require 'player'

describe Player do

  let(:player) { Player.new("Jake") }

  context "name" do

    it "returns name of the player" do
      expect(player.name).to eq "Jake"
    end 

  end 

end
