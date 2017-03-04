describe Player do
  subject(:player) { Player.new("person") }

  describe "#name" do
    it "stores a player's name" do
      expect(player.name).to eq("person")
    end
  end
end
