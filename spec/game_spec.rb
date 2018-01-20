require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '.create' do
    it 'stores game instance in class instance variable' do
      Game.start player
      expect(Game.current_game).to be_a Game
    end
  end

  describe '#player' do
    it 'returns the player object' do
      expect(game.player).to be player
    end
  end

  describe '#compare' do
    before do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
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
