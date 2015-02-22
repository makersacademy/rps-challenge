require 'player.rb'

describe Player do

  let(:player){Player.new}
  
  it 'has a name' do
    player = Player.new("Player")
    expect(player.name).to eq "Player"
  end

  it 'can take a turn' do
    player = Player.new("Player")
    player.turns("Paper")
    expect(player.turn).to eq "Paper"
  end
  
end