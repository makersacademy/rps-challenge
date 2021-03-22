require 'player'

describe Player do
  let(:player) { Player.new("Lily") }

  it 'returns the players name' do
    expect(player.name).to eq ("Lily")
  end
end
