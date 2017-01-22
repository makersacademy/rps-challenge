require 'player'

describe Player do
  subject(:dave) {Player.new("Dave", "option1")}

  it 'should return the name' do
    expect(dave.name).to eq "Dave"
  end
  it 'should return the option' do
    expect(dave.option).to eq "option1"
  end
end
