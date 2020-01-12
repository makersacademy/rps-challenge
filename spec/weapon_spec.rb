require 'weapon'

describe Weapon do

  subject(:weapon) { Weapon.new('rock') }

  it 'a weapon can beat another' do
    expect(weapon.beats?('scissors')).to be true
  end 

end
