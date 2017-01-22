require "player"

describe Player do
  player1 = Player.new("Bert")
    it "Checks for player name" do
      expect(player1.name).to eq("Bert")
    end

  end
