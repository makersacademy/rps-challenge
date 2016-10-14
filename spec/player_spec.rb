require 'player'

describe Player do
  subject(:player_1) { Player.new('player_1')}

  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'player_1'
    end
  end
end
