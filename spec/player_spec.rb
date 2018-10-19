require 'player'

describe "Player" do

  describe "#initialize" do
    it "creates a player with a name and a move" do
      player = Player.new("Bob")
      expect(player.name).to eq "Bob"
      expect(player.move).to eq nil
    end

  end

end
