require 'random_weapon'

describe RandomWeapon do

  subject(:random_weapon) { described_class.new }

  it 'produces a random weapon' do
    expect(['rock', 'paper', 'scissors']).to include random_weapon.weapon
  end
end
