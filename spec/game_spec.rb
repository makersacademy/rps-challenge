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

  describe "#print_winner" do
    it "returns the name of the computer if the computer won with rock" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the computer if the computer won with scissors" do
      allow(computer).to receive(:choice).and_return(:scissors)
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the computer if the computer won with paper" do
      allow(computer).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the player if the player won with paper" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns the name of the player if the player won with rock" do
      allow(computer).to receive(:choice).and_return(:scissors)
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns the name of the player if the player won with scissors" do
      allow(computer).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns 'Draw!' if no one wins with rock" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Draw!")
    end
    it "returns 'Draw!' if no one wins with paper" do
      allow(computer).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Draw!")
    end
    it "returns 'Draw!' if no one wins with scissors" do
      allow(computer).to receive(:choice).and_return(:scissors)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Draw!")
    end
  end
  
end
