require 'player'

describe Player do
  subject(:player) {Player.new('Liz')}

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Liz'
    end
  end
end
