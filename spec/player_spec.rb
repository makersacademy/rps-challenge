require 'player'

describe Player do 

  it 'can choose between Rock, Paper, or Scissors' do
    player = Player.new
    expect(player.rock).to eq(true)
  end



end