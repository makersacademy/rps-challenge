require 'player.rb'

describe Player do

  let(:player){Player.new}
  
  it 'has a name' do
    player.name = "Player"
    expect(player.name).to eq "Player"
  end

  it 'can take a turn' do
    player.turns("paper")
    expect(player.turn).to eq "paper"
  end
  
end