require 'player'

describe Player do

  subject(:player) { Player.new('Jimmy') }

  describe '#player_name' do

    it 'sets player_name' do
      expect(player.name).to eq 'Jimmy'
    end
  end
end
