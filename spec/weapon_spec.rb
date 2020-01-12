require 'weapon'

describe Weapon do

  # subject(:rock) { Weapon.new('rock') }

  it 'a weapon can beat another' do
    rock = Weapon.new('rock')
    scissors = Weapon.new('scissors')
    expect(rock.beats(scissors)).to be :Winner
  end 

end
