require './lib/player'

describe Player do

  let(:player) { Player.new("Eve") }

  it "has a name" do
    expect(player.name).to eq "Eve"
  end
end
