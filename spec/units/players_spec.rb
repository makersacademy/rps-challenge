require 'players'

describe Players do

  let(:players) { Players.new("Caitlin") }

  it 'name returns the name of the player' do
    expect(players.name).to eq "Caitlin"
  end

  it 'move returns the move that the player selected' do
    expect(players.move = "rock").to eq "rock"
  end
end
