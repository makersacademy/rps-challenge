require 'player'

describe Player do
  let(:player)  { Player.new("Bob") }

  it 'can get player name' do
    expect(player.name).to eq("Bob")
  end

  it 'can get player move' do
    player.assigned("Rock")
    expect(player.move).to eq("Rock")
  end
end
