require "player"

describe Player do

  it "gives a player name when player initialized" do
    name="Tom" 
    player = Player.new(name)
    expect(player.name).to eq name
  end
end
