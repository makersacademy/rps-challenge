require 'random_weapon_generator'

class RandomWeapon
  include RandomWeaponGenerator
end

describe RandomWeapon do
  it 'has a constant which is an array' do
    expect(RandomWeapon::AVAILABLE_WEAPONS).to be_kind_of Array
  end

  it 'constant contains weapons' do
    expect(RandomWeapon::AVAILABLE_WEAPONS).to_not be_empty
  end

  describe '#random_weapon' do
    it 'returns rock, paper, or scissors' do
      available_weapons = [:rock, :paper, :scissors]
      chosen_weapon = subject.random_weapon
      expect(available_weapons.include?(chosen_weapon)).to be true
    end
  end
end