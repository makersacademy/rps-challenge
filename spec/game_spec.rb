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
      expect(game.compare('Rock')).to eq :win
    end

    it 'outputs a draw' do
      expect(game.compare('Scissors')).to eq :draw
    end

    it 'outputs a loss' do
      expect(game.compare('Paper')).to eq :lose
    end
  end
end
