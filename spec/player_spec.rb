require 'player'

describe Player do
  it "returns it's name" do
    player = Player.new("Max")
    expect(player.name).to eq "Max"
  end
end
