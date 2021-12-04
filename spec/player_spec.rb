require 'player'

describe Player do
  let!(:player) { Player.new("Wednesday") }

  it "has a name" do
    expect(player.name).to eq "Wednesday"
  end
end
