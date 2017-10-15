require 'player'

describe Player do
  describe '#name' do
    it 'should return the players name' do
      player = Player.new('Jack')
      expect(player.name).to eq 'Jack'
    end
  end
end
