describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player)   { double :player }
  let(:computer)  { double :computer }

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

  describe "#play" do
    it "plays the choices against each other and returns the winning choice" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.play).to eq :rock
    end
  end

  describe "#winner" do
    it "returns the winner" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:scissors)
      game.play
      expect(game.winner).to eq computer
    end
    it "returns the winner" do
      allow(computer).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:scissors)
      game.play
      expect(game.winner).to eq player
    end
    it "returns :draw if there is a draw" do
      allow(computer).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      game.play
      expect(game.winner).to eq :draw
    end
  end
end
