require './lib/player'

describe Player do

  describe "initialization" do
    it "will take a name as an argument" do
      player = Player.new("Moe Syzslak")
      expect(player.name).to eq("Moe Syzslak")
    end

    it "will have a default name if no argument is supplied" do
      player_no_name = Player.new
      expect(player_no_name.name).to eq("The Computer")
    end
  end
  
end
