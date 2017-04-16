describe Player do
  subject(:player) { Player.new("person") }

  describe "#name" do
    it "stores a player's name" do
      expect(player.name).to eq("person")
    end
  end

  describe "#choice" do
    it "returns the player's choice of weapon" do
      player.choice("rock")
      expect(player.weapon).to eq(:rock)
    end

    it "raises error when invalid weapon entered" do
      message = "Please pick rock, paper or scissors."
      expect{player.choice("uzi")}.to raise_error(message)
    end
  end
end
