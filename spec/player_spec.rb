require_relative '../lib/player'

describe Player do

  subject(:player) { Player.new('Conor') }

  context 'Create Player object' do
    it 'with a name' do
      expect(player.name).to eq('Conor')
    end

    it 'with a weapon' do
      player.weapon = 'Scissors'
      expect(player.weapon = 'Scissors').to eq('Scissors')
    end
  end
end
