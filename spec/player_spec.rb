require 'player'

describe Player do
  subject(:player) {Player.new('maggie')}

  describe 'returns the player name' do
    it 'returns the name' do
      expect(player.name).to eq('maggie')
    end
  end




end
