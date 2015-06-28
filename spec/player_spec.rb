require 'player'

describe Player do 
def player; Player.new; end

  it 'Player can choose between rock, paper, scissors' do
    expect(player.rock).to eq :rock
  end



end