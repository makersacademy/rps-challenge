require 'game'

describe Game do

    subject(:game) { described_class.new }

  describe '#computer_move' do
    it 'records ROCK as @computer_move' do
      allow(game).to receive(:computer_move).and_return 'ROCK'
      expect(game.computer_move).to eq 'ROCK'
    end
  end

  describe '#player_move' do
    it 'records @players_move' do
      allow(game).to receive(:player_move).and_return 'ROCK'
      expect(game.player_move).to eq 'ROCK'
    end
  end
end
