describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player)   { double :player, name: "Ellie" }
  let(:computer) { double :computer, name: "Computer" }

  describe "#player" do
    it "shows the player object" do
      expect(game.player).to eq player
    end
  end

  describe "#computer" do
    it "shows the computer object" do
      expect(game.computer).to eq computer
    end
  end

  describe "#result" do
    it "plays the choices against each other and returns the winning choice" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq :rock
    end
  end

  describe "#winner" do
    it "returns the winner as the computer" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      game.result
      expect(game.winner).to eq computer
    end
    it "returns the winner as the player" do
      allow(computer).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:scissors)
      game.result
      expect(game.winner).to eq player
    end
    it "returns :draw if there is a draw" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      game.result
      expect(game.winner).to eq :draw
    end
  end

  describe "#print_winner" do
    it "returns the name of the winner if the computer won" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      game.result
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the winner if the player won" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:paper)
      game.result
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns 'Draw!' if no one wins" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      game.result
      expect(game.print_winner).to eq("Draw!")
    end
  end
end
