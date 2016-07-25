require 'weapon'

describe Weapon do

  subject(:pineapple) { described_class.new ("pineapple")}
  subject(:rock) { described_class.new ("rock")}

  valid_weapons = [:rock, :paper, :scissors]

  it 'has a choice of weapons' do
    expect(rock.valid_weapons).to eq valid_weapons
  end

  it 'knows if a weapon choice is invalid' do
    expect(pineapple.valid_weapon?).to be false
  end

  it 'knows if a weapon choice is valid' do
    expect(rock.valid_weapon?).to be true
  end
end
