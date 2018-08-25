require 'game'

describe Game do

  let(:player_move) { 'ROCK' }
  let(:computer_move) { 'ROCK' }
  subject(:game) { described_class.new(player_move)}

  describe '#computer_move' do
    it 'records ROCK as @computer_move' do
      expect(game.computer_move).to eq 'ROCK'
    end
  end

  describe '#player_move' do
    it 'records @players_move' do
      expect(game.player_move).to eq 'ROCK'
    end
  end
end
