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

    it 'creates a list of the available weapons' do
      expect(weapon.weapons).to eq(%w(rock paper scissors))
    end

    it 'creates a hash of the weapons values' do
      expect(weapon.weapon_values).to eq({rock: 0, paper: 1, scissors: 2})
    end
  end

  context "#weapon_generator" do
    it 'is called on a Weapon instance' do
      expect(weapon).to respond_to(:weapon_generator)
    end

    it 'returns a random weapon choice from a list of available weapons' do
      choices = []
      100.times.map{choices << weapon.weapon_generator}
      expect(choices.uniq).to include(weapon.weapon_choice)
    end
  end

  context "#retrieve_value" do
    it 'is called on a Weapon instance' do
      expect(weapon).to respond_to(:retrieve_value)
    end

    it 'returns the weapon\'s value' do
      allow(weapon_type).to receive(:to_sym).and_return(:paper)
      expect(weapon.retrieve_value).to eq(1)
    end
  end
end