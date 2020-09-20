require 'player'

describe Player do 
  describe '#move' do 
    it 'returns the players move' do
      player = Player.new('ollie')
      expect(player.move('rock')).to eq 'rock'
    end
  end
end