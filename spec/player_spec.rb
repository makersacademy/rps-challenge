require 'player'

describe Player do

  subject(:player) { described_class.new("Chris") }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq 'Chris'
    end
  end

  describe '#add_weapon' do
    it 'adds a weapon' do
      weapon = double(:weapon)
      player.add_weapon(weapon)
      expect(player.weapon).to eq weapon
    end
  end

end
