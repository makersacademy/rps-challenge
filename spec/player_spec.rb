require 'player'

describe Player do

  it 'returns the players name' do
    player = Player.new("Imogen")
    expect(player.name).to eq "Imogen"
  end

end
