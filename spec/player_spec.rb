require 'player'

describe Player do
  subject(:player) {described_class.new("Vivien")}

  it "initializes with a name" do
    expect(player.name).to eq "Vivien"
  end

  it "sets the player's choice of weapon" do
    player.set_choice(:rock)
    expect(player.choice).to eq :rock
  end
end
