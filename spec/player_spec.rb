require './models/player'

describe Player do
  subject(:mark) { Player.new('Mark')}

  describe '#name' do
    it 'displays name' do
      expect(mark.name).to eq 'Mark'
    end
  end

  describe '#move' do
    it 'takes in a move from player' do
      expect(mark.player_move('Rock')).to include "Rock"
    end
  end
end
