require "player"

describe Player do
  let(:player) { Player.new("Andrea") }
  
  describe "#name" do
    it "should return the player's name" do
      expect(player.name).to eq "Andrea"
    end
  end
end