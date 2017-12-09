describe Player do

  subject(:player) { described_class.new("Ellie") }

  describe "#name" do
    it "shows the name of the player" do
      expect(player.name).to eq "Ellie"
    end
  end

  describe "#choice" do
    it "shows the choice of the player" do
      player.choose(:rock)
      expect(player.choice).to eq :rock
    end
  end

end
