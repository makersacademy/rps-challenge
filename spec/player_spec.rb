require 'player.rb'

describe Player do

  let(:player){Player.new("Alex Kidd")}
  
  it 'has a name' do
    player.name
    expect(player.name).to eq "Alex Kidd"
  end

  it 'can take a turn' do
    player.turns("paper")
    expect(player.turn).to eq "paper"
  end
  
end