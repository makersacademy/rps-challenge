require 'game'

describe Game do

  let(:player_move) { double 'player_move' }

  describe '#new_move' do
    it 'call generate computer move method' do
      expect(subject).to receive :computer_move
      subject.new_move(player_move)
    end
  end
end
