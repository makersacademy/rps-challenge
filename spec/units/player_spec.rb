require 'player'

describe Player do

  let(:player) { Player.new("Caitlin") }

  it 'name returns the name of the player' do
    expect(player.name).to eq "Caitlin"
  end

  it 'move returns the move that the player selected' do
    expect(player.move = "rock").to eq "rock"
  end
end
