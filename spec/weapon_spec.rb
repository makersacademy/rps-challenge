require 'weapon'

describe Weapon do
  subject(:weapon){described_class.new('Rock')}
  let(:scissors){double :scissors}

  it 'knows its name' do
    expect(weapon.name).to eq 'Rock'
  end

  it 'knows who it can beat' do
    expect(weapon.wins).to be_an_instance_of Array
  end

  it 'adds weapons it can beat to the array' do
    weapon.add_weapon(scissors)
    expect(weapon.wins).to include(scissors)
  end

end
