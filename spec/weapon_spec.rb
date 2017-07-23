require 'weapon'

describe Weapon do
    subject(:weapon) { Weapon.new('Rock') }

  describe '#weapon_type' do
    it 'returns a weapon' do
      expect(weapon.weapon_type).to eq 'Rock'
    end
  end
end
