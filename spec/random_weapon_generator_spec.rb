require 'random_weapon_generator'

class RandomWeapon
  include RandomWeaponGenerator
end

describe RandomWeapon do
  it "has a constant called 'AVAILABLE_WEAPONS' which is an array" do
    expect(RandomWeapon::AVAILABLE_WEAPONS).to be_kind_of Array
  end

  it 'the array contains at least three weapons' do
    expect(RandomWeapon::AVAILABLE_WEAPONS.count).to be >= 3
  end

  describe '#random_weapon' do
    it 'returns a random weapon from the AVAILABLE_WEAPONS array' do
      chosen_weapon = subject.random_weapon
      expect(RandomWeapon::AVAILABLE_WEAPONS.include?(chosen_weapon)).to be true
    end
  end
end