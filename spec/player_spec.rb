require_relative '../lib/player'

describe Player do

  subject(:player) { described_class.new("Bob", "paper") }

  it "has a name" do
    expect(player.name).to eq "Bob"
  end

  it "has a weapon" do
    # player.weapon = "paper"
    expect(player.weapon).to eq "paper"
  end

end
