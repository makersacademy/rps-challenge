require 'player'

describe Player do
  context "#initialize" do
    it "player name is saved when instance is created" do
      player = Player.new("Ed")
      expect(player.name).to eq "Ed"
    end

  end
end
