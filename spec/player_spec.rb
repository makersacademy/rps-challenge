require 'player'

describe Player do

  it "creates a new player and takes the player name" do
    Player.create('Chris')
    expect(Player.instance.name).to eq 'Chris'
  end

  it "calls the same instance of a class" do
    expect(Player.create('Chris')).to eq Player.instance
  end
end
