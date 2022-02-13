require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new("Ed") }

  it "has a name" do
    expect(player.name).to eq "Ed"
  end

end
