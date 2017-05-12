require 'player'

describe Player do
  player = Player.new('Player', :human)

  it 'has a name' do
    expect(player.name).to eq 'Player'
  end
  it 'starts with no wins' do
    expect(player.wins).to eq 0
  end
  it 'has human type' do
    expect(player.type).to eq :human
  end
  it 'can win a game' do
    expect { player.win }.to change { player.wins }.by(1)
  end
end
