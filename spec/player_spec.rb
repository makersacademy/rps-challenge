require 'player'

describe Player do
  subject(:player) { described_class.new("Rosie") }
  
  it "constructs and returns name" do
    expect(player.name).to eq "Rosie"
  end

  it "can have a weapon assigned to it" do
    player.weapon = :rock
    expect(player.weapon).to eq :rock
  end
end