require 'player'

describe Player do
  player = Player.new('Player')

  it 'has a name' do
    expect(player.name).to eq 'Player'
  end
  it 'starts with no wins' do
    expect(player.wins).to eq 0
  end
  it 'starts with no loses' do
    expect(player.loses).to eq 0
  end
  it 'can win a game' do
    expect { player.win }.to change { player.wins }.by(1)
  end
  it 'can lose a game' do
    expect { player.loss }.to change { player.loses }.by(1)
  end
end
