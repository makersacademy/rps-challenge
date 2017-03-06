require 'player'

describe Player do

  it "creates a new player and takes the player name" do
    RPS.create('Chris')
    expect(RPS.instance.player.player_name).to eq 'Chris'
  end
end
