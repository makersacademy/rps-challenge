require 'weapon'

describe Weapon do

  let(:weapon) {Weapon.new}

  it 'should be able to be paper' do
    weapon.paper
    expect(weapon.type).to eq "paper"
  end

  it 'should be able to be scissors' do
    weapon.scissors
    expect(weapon.type).to eq "scissors"
  end

  it 'should be able to be rock' do
    weapon.rock
    expect(weapon.type).to eq "rock"
  end

  it 'should be able to be randomly be paper' do
    allow(weapon).to receive(:random_weapon).and_return(weapon.paper)
    expect(weapon.type).to eq "paper"
  end

end