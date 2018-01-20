require 'game'

describe Game do
  subject(:game) { described_class.new(player1, computer) }
  let(:player1) { double :player }
  let(:computer) { double :computer }

  describe '.create' do
    it 'stores game instance in class instance variable' do
      Game.start(player1, computer)
      expect(Game.current_game).to be_a Game
    end
  end

  describe '#player' do
    it 'returns the player object' do
      expect(game.player1).to be player1
    end
  end

  describe '#compare' do
    before do
      allow(computer).to receive(:move).and_return :Scissors
    end

    it 'outputs a win' do
      allow(player1).to receive(:move).and_return :Rock
      expect(game.compare).to eq :win
    end

    it 'outputs a draw' do
      allow(player1).to receive(:move).and_return :Scissors
      expect(game.compare).to eq :draw
    end

    it 'outputs a loss' do
      allow(player1).to receive(:move).and_return :Paper
      expect(game.compare).to eq :lose
    end
  end
end
