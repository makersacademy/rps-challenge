require 'player'


describe Player do

subject(:player) { described_class.new(:name) }

# context "Entering player 1's name" do

  it "should have a name" do
    expect(player).to respond_to(:name)
  end

  it "should have a selection" do
    expect(player).to respond_to(:selection)
  end

  it "should be able to make a selection" do
    player.select("Rock")
    expect(player.selection).to eq("Rock")
  end


end
