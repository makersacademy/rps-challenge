require 'player'

describe Player do

  subject(:player) { Player.new('player') }

  describe '#name' do
    it 'Should return the name of the player' do
      expect(player.name).to eq 'player'
    end
 end

end