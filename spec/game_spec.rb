
describe Game do
  describe '#result' do
    it "returns 'draw' when computer and player selection match" do
      game = Game.new(:ROCK, :ROCK)
      expect(game.result).to eq(:draw)
    end

    it "returns 'draw' when computer and player selection match" do
      game = Game.new(:SCISSORS, :SCISSORS)
      expect(game.result).to eq(:draw)
    end

    it "returns 'draw' when computer and player selection match" do
      game = Game.new(:PAPER, :PAPER)
      expect(game.result).to eq(:draw)
    end

    it "returns 'you win' when player beats computer" do
      game = Game.new(:ROCK, :SCISSORS)
      expect(game.result).to eq(:win)
    end

    it "returns 'you win' when player beats computer" do
      game = Game.new(:PAPER, :ROCK)
      expect(game.result).to eq(:win)
    end

    it "returns 'you win' when player beats computer" do
      game = Game.new(:SCISSORS, :PAPER)
      expect(game.result).to eq(:win)
    end

    it "returns 'you lose' when computer beats player" do
      game = Game.new(:ROCK, :PAPER)
      expect(game.result).to eq(:lose)
    end

    it "returns 'you lose' when computer beats player" do
      game = Game.new(:PAPER, :SCISSORS)
      expect(game.result).to eq(:lose)
    end

    it "returns 'you lose' when computer beats player" do
      game = Game.new(:SCISSORS, :ROCK)
      expect(game.result).to eq(:lose)
    end

  end

end
