require './lib/player.rb'

describe Player do
  it 'checks a player can recieve a name' do
    player1 = Player.new("Super Hans")
    expect(player1.name).to eq "Super Hans"
  end
end