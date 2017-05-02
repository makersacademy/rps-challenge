require 'player'

describe Player do
  describe '#name' do
    it 'initializes a player with a name' do
      player_new = Player.new('Bob')
      expect(player_new.name).to eq 'Bob'
    end
  end
end
