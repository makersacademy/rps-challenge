require 'player'

describe Player do

  let (:player) { Player.new('Phil') }

  it 'can have a name' do
    expect(player).to respond_to(:name)
  end

  it 'is assigned a name when initialized' do
    expect(player.name).to eq('Phil')
  end

  it 'can make a choice' do
    expect(player).to respond_to(:choose)
  end

  it 'knows which choice it has made on its turn' do
    player.choose(:scissors)
    expect(player.choice).to eq(:scissors)
  end

  it 'can play the game' do
    game = double :game
    expect(game).to receive(:play_with).with (player)
    player.play(game)
  end

end