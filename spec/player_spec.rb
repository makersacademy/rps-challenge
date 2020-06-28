require 'player'
describe Player do

  it 'returns its own name' do
    player = Player.new("name")
    expect(player.name).to eq "name"
  end
  
end
