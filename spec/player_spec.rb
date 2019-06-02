require 'player'

describe 'Player' do
  let(:player) { Player.new('Filbert') }

  it 'has a name' do
    expect(player.name).to eq("Filbert")
  end

  it 'can set and retreive move' do
    player.move = 'rock'
    expect(player.move).to eq('rock')
  end
end