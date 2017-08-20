require "player"

describe Player do
  subject(:player) { Player.new("Puyan", "rock") }

  context "#name" do
    it "shows player's name" do
      expect(player.name).to eq "Puyan"
    end
  end
  context "#choice" do
    it "player chooses rock" do
      expect(player.choice).to eq "rock"
    end
  end
end
