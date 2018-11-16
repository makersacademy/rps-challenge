require "player"

describe Player do

  it "sets choice to nil" do
    player = Player.new("Nim")
    expect(player.choice).to eq nil
  end
  it "sets name to 'Nim'" do
    player = Player.new("Nim")
    expect(player.name).to eq "Nim"
  end
end
