require 'weapon'

describe Weapon do

  let(:weapon_1) { :rock }
  let(:weapon_2) { :paper }
  let(:weapon_3) { :scissors }

  describe '#random_weapon' do
    it 'returns a value' do
      expect(Weapon.random_weapon.to_s).not_to be_nil
    end
  end

  describe '#calc_winning_weapon' do
    it 'returns a draw' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_1)).to be_nil
    end
    it 'returns player 1 winning weapon' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_3)).to eq(weapon_1)
    end
    it 'returns player 2 winning weapon' do
      expect(Weapon.calc_winning_weapon(weapon_1, weapon_2)).to eq(weapon_2)
    end
  end
end
