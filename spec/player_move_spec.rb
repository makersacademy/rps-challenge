require 'player_move'

describe PlayerMove do

  subject(:player_move) { PlayerMove.new('rock') }

  describe '#make_move' do
      it 'returns the chosen move' do
        expect(player_move.make_move).to eq 'rock'
      end
    end
  end
