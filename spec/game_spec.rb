describe Game do

  subject(:game) { described_class.new("AI", player2) }
  let(:player2) { double("player2", name: "Fran") }


  describe "#Initialize" do
    it "checks the attribute reader player1" do
      expect(game.player1).to eq("AI")
    end

    it "checks the attribute reader player2" do
      expect(game.player2.name).to eq("Fran")
    end
  end
end
