require 'game'

describe Game do

  let(:player_move) { 'ROCK' }
  subject(:game) { described_class.new(player_move)}

  describe '#player_move' do
    it 'records the players move' do
      expect(game.player_move).to eq 'ROCK'
    end
  end
end
