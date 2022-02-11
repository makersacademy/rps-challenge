require_relative '../lib/player'

describe Player do

  subject(:player) { described_class.new("Bob", 1) }

  it "has a name" do
    expect(player.name).to eq "Bob"
  end

  it "has an id" do
    expect(player.id).to eq 1
  end

  it "has a weapon" do
    player.weapon = "paper"
    expect(player.weapon).to eq "paper"
  end

end
