require 'player'

describe Player do
  subject(:player) { described_class.new("Lan") }

  it "should let you initialize with a player" do
    expect(player.name).to eq "Lan"
  end
end
