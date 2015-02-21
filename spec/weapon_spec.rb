require 'weapon'

describe Weapon do

  let(:weapon) {Weapon.new}

  it 'should be able to have be paper' do
    expect(weapon.paper).to eq "paper"
  end

  it 'should be able to have be scissors' do
    expect(weapon.scissors).to eq "scissors"
  end

  it 'should be able to have be paper' do
    expect(weapon.rock).to eq "rock"
  end

end