require 'player'

describe 'Player' do
  subject(:player_1) { Player.new('Player 1') }

  describe '#name' do
    it 'should return a name' do
      expect(player_1.name).to eq 'Player 1'
    end
  end
end
