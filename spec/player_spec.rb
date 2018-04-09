describe Player do

  subject(:player) { described_class.new("Gadiza") }

  it "should return player's name" do
    expect(player.name).to eq "Gadiza"
  end
  
end
