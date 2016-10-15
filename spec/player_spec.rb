require 'player'

describe Player do
  it "has a name" do
    player = Player.new("Laura")
    expect(player.name).to eq "Laura"
  end
end
