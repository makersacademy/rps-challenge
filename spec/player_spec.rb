require "./lib/player.rb"

describe Player do
  it "creates an instance of Player and returns the name" do
    player = Player.new("Marc")
    expect(player.name).to eq "Marc"
  end
end
