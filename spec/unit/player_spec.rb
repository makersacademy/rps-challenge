require 'player'

describe Player do
  describe 'initialization' do
    it 'creates a player' do
      player = Player.new('Raman')
      expect(player.name).to eq 'Raman'
    end
  end
end
