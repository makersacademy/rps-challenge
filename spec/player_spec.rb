require 'player'

describe Player do
  player = Player.new("Max Planck")

  it "initialize a player with a name" do
    expect(player).to have_attributes(name: "Max Planck", move: nil)
  end

  it "store a rps move" do
    player.move=("rock")
    expect(player.move).to eq "rock"
  end
end
