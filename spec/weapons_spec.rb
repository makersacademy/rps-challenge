require 'weapons'

describe Weapons do
  subject(:weapons) {described_class.new}


  it 'randomly produces a weapon' do
    srand(0)
    expect(weapons.weapon).to eq 'rock'
  end
end
