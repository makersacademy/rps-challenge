require 'player'

describe Player do
  subject(:player) { described_class.new("Albert") }

  it "returns player's name" do
    expect(player.name).to eq "Albert"
  end

end
