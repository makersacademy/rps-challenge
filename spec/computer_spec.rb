describe Computer do
  let(:computer) { Computer.new }
  let(:game) { double("game", :weapons => [:rock, :paper, :scissors])}

  describe "new" do
    it "responds to new" do
      expect(Computer).to respond_to(:new)
    end
  end

  describe "#choice" do
    it "returns a random choice from the game WEAPONS array" do
      expect(game.weapons).to include(computer.choice)
    end
  end
end
