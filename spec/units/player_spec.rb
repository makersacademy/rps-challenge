require 'player'

describe Player do
  it "stores and shows player's name" do
    player = Player.new("Dan")
    expect(player.name).to eq "Dan"
  end
end
