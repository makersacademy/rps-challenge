require 'player'

describe '#player' do

  it 'can have the status rock' do
    player = Player.new('rock')
    expect(player.status).to eq('rock')
  end

  it 'can have the status paper' do
    player = Player.new('paper')
    expect(player.status).to eq('paper')
  end

  it 'can have the status scissors' do
    player = Player.new('scissors')
    expect(player.status).to eq('scissors')
  end

end
