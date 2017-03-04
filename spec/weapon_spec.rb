require 'weapon'

describe Weapon do
  subject(:weapon){described_class.new('Rock')}
  let(:scissors){double :scissors}
  let(:paper){double :paper}

  it 'knows its name' do
    expect(weapon.name).to eq 'Rock'
  end

  it 'knows who it can beat' do
    expect(weapon.win).to be_an_instance_of Array
  end

  it 'adds weapons it can beat to the array' do
    weapon.beats_weapon(scissors)
    expect(weapon.win).to include(scissors)
  end

  it 'knows who it can lose against' do
    expect(weapon.lose).to be_an_instance_of Array
  end

  it 'adds weapons it can beat to the array' do
    weapon.loses_to_weapon(paper)
    expect(weapon.lose).to include(paper)
  end

end
