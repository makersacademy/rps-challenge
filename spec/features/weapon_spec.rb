require 'weapon'

describe Weapon do

  subject(:rock) { described_class.new('rock') }
  subject(:pineapple) { described_class.new('pineapple') }
  valid_weapons = [:rock, :paper, :scissors]

  it 'has a choice of weapons' do
    expect(rock.valid_weapons).to eq valid_weapons
  end

  it 'knows if a weapon choice is invalid' do
    expect(pineapple.valid?).to be false
  end

  it 'knows if a weapon choice is valid' do
    expect(rock.valid?).to be true
  end
end
