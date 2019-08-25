require 'player'

describe Player do
  let(:player) { Player.new('Bob') }

  it 'stores a player name' do
    expect(player.name).to eq('Bob')
  end

  describe '#choose(weapon)' do
    it 'can choose a weapon' do
      player.choose(:rock)
      expect(player.weapon).to eq(:rock)
    end
  end
end
