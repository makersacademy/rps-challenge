require 'player'

describe Player do
  context "#initialize" do
    it "player name is saved when instance is created" do
      player = Player.new("Ed")
      expect(player.name).to eq "Ed"
    end
  end

  context "#select_hand" do
    it "saves hand to instance" do
      player = Player.new("Ed")
      player.select_hand(:rock)
      expect(player.player_hand).to eq :rock
    end
  end

end
