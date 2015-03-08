require './lib/player'

describe Player do

  it 'has a name' do
    paul = Player.new
    paul.name = "Paul"
    expect(paul.name).to eq "Paul"
  end

  it 'can choose a weapon' do
    paul = Player.new
    paul.weapon = "Scissors"
    expect(paul.weapon).to eq "Scissors"
  end

end