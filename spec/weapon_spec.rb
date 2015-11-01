require 'weapon'

describe Weapon do

  subject(:weapon)  { described_class.new ('rock') }

  it 'has a type' do
    expect(weapon.type).to eq :rock
  end
end
