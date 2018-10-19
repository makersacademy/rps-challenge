require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :player }

  describe '#win' do
    it 'returns a win if player 1 has won' do
      expect(player_1).to receive(:win_point)
      game.win(player_1)
    end
  end


end
