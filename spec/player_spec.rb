require 'player'

describe Player do
  it "has a weapon" do
    player = Player.new
    expect(player.weapon = :rock).to eq :rock
  end

  it "has a name" do
    player = Player.new("Tom")
    expect(player.name).to eq "Tom"
  end

end