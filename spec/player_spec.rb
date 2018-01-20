describe Player do

  subject(:player) { described_class.new("Fran") }

  describe "#Initialize" do
    it "checks the attribute reader name" do
      expect(player.name).to eq("Fran")
    end
  end

  describe "#save_choice" do
    it "stores the player schoice" do
      player.save_choice("paper")
      expect(player.choice).to eq("paper")
    end
  end
end
