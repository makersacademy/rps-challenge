require 'player'

describe Player do

  subject(:player_1) { Player.new("Jane") }

  describe "#name" do
    it "can return the player's name after being initalized" do
      expect(player_1.name).to eq "Jane"
    end
  end

end
