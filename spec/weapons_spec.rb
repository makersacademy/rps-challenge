require 'weapons'

describe Weapons do
  subject(:weapons) {described_class.new}

  it 'initializes with hash of weapons' do
    expect(weapons.choices).to have_key(:rock)
  end


end
