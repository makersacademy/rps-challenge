require 'player'

describe Player do
  subject(:player) { described_class.new("Dave") }
  let(:moves) { [:rock, :paper, :scissors]}

  it "should have a name" do
    expect(player.name).to eq "Dave"
  end
  
  it "should have a default name of CPU" do
    expect(Player.new.name).to eq "CPU"
  end

  it "should be able to make a move" do
    expect(moves).to be_include(player.make_move)
  end
end
