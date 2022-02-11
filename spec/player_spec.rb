require_relative '../lib/player'

describe Player do

  subject(:player) { described_class.new("Bob", 1) }

  it "has a name" do
    expect(player.name).to eq "Bob"
  end

  it "has an id" do
    expect(player.id).to eq 1
  end

end
