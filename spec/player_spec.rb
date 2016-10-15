require 'player'

describe Player do
  subject(:player_1) { Player.new('Batman')}

  describe '#name' do
    it 'shows player name' do
      expect(player_1.name). to eq 'Batman'
    end
  end
end
