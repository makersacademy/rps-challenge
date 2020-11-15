require_relative '../../lib/weapon'

describe Weapon do

  let(:weapon_type) { double :WeaponType }
  subject(:weapon) { described_class.new(weapon_type) }

  it 'creates an instance of the Weapon class' do
    expect(weapon).to be_instance_of(described_class)
  end

  context "#initialize" do
    it 'creates a weapon instance variable for the weapon of choice' do
      expect(weapon.weapon_choice).to eq(weapon_type)
    end
  end
end