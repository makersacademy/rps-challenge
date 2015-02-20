require 'player'

describe Player do

  it 'has a name' do
    player = Player.new("Paul")
    expect(player.name).to eq "Paul"
  end

  it 'can pick a move' do
    player = Player.new("Paul")
    player.picks = "Rock"
    expect(player.pick).to eq "Rock"
  end

end