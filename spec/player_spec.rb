require './lib/player.rb'

describe Player do

  subject(:player) { described_class.new}
  let(:name) { double(:name) }
  let(:weapon) { double(:weapon) }


  describe '#set_name' do
    it 'should set the name' do
      player.set_name(name)
      expect(player.name).to be name
    end
  end

  describe '#set_weapon' do
    it 'should set the weapon' do
      player.set_weapon(weapon)
      expect(player.weapon).to be weapon
    end
  end

end
