require 'player'

describe Player do
  it 'receives choice' do
    player = Player.new("Erin")
    player.turn("Rock")
    expect(player.choice).to eq(:Rock)
  end
end
