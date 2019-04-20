require 'player'

describe Player do
  subject(:player_name) { Player.new('player_name') }

  describe '#name' do
    it 'returns the players name' do
      expect(player_name.name).to eq 'player_name'
    end
  end
end
