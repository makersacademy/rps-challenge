require './lib/player'

describe Player do

  it 'has a player name' do
    @player = Player.new('Ned Stark')
    expect(@player.name).to eq 'Ned Stark'
  end

end
