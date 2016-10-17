require 'player'

describe Player do
  subject(:player) { described_class.new("Laura") }
  it "has a name" do
    expect(player.name).to eq "Laura"
  end

  it "can make a move" do
    player.make_move(:rock)
    expect(player.move).to eq :rock
  end
end
