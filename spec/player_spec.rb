require 'player'

describe Player do
  let(:player) { Player.new("Playing") }

  describe "#new" do
    it "will take a name as an argument" do
      expect(player.name).to eq("Playing")
    end

    it "will have a default name if no argument is supplied" do
      computer_test = Player.new
      expect(computer_test.name).to eq("Computer")
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
