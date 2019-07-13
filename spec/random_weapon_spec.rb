require 'random_weapon'

describe RandomWeapon do

  subject(:random_weapon) { described_class.new }

  it 'produces a random weapon' do
    allow(random_weapon).to receive(:rand).and_return(0)
    expect(random_weapon.weapon).to eq('rock')
  end
end
