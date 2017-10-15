require 'weapon'

describe Weapon do

  let(:weapon_1) { :rock }
  let(:weapon_2) { :paper }
  let(:weapon_3) { :scissors }

  describe '#calc_winning_weapon' do
    it 'returns a draw' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_1)).to be_nil
    end
    it 'returns the winning weapon' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_3)).to eq(weapon_1)
    end
    it 'returns the winning weapon' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_2)).to eq(weapon_2)
    end
  end
end
