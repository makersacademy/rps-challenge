require "./lib/player.rb"

describe Player do

  it "accepts a name on initialize and returns it on #name" do
    player = Player.new("Test")
    expect(player.name).to eq "Test"
  end
end
