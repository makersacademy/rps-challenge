require 'Player'

describe Player_name do

  subject(:bob) { Player_name.new('Bob') }

  describe '#player_name' do
    it 'receives player name as input' do
      expect(bob.player_name).to eq('Bob')
    end
  end

end