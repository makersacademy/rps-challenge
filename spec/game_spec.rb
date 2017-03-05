
describe Game do

  describe '#result' do
    it "returns draw when computer and player selection match" do
      game = Game.new(:rock, :rock)
      expect(game.result).to eq(:draw)
    end

    it "returns you win when player beats computer" do
      game = Game.new(:rock, :scissors)
      expect(game.result).to eq(:win)
    end

    it "returns you lose when computer beats player" do
      game = Game.new(:rock, :paper)
      expect(game.result).to eq(:lose)
    end
  end

end
