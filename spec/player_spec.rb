require './lib/player'

describe Player do
  let(:player) { Player.new("Moe Syzslak") }

  describe "#new" do
    it "will take a name as an argument" do
      expect(player.name).to eq("Moe Syzslak")
    end

    it "will have a default name if no argument is supplied" do
      player_no_name = Player.new
      expect(player_no_name.name).to eq("The Computer")
    end
  end

  describe "#choose" do
    it "will save the player's choice" do
      expect(player.choose("Rock")).to eq("Rock")
    end

    it "will choose a random weapon if no argument is supplied" do
      srand(3445)
      expect(player.choose).to eq("Scissors" || "Paper" || "Rock")
    end
  end

end
