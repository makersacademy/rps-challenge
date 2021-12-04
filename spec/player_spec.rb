require 'player'

describe Player do
  player = Player.new("Max Planck")

  it "initialize a player with a name" do
    expect(player).to have_attributes(name: "Max Planck")
  end
end