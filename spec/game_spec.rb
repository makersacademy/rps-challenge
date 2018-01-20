describe Game do

  subject(:game) { described_class.new("AI", "Fran") }

  describe "#Initialize" do
    it "checks the attribute reader player1" do
      expect(game.player1).to eq("AI")
    end

    it "checks the attribute reader player2" do
      expect(game.player2).to eq("Fran")
    end
  end
end
