describe Player do

  subject(:p1) { described_class.new("Kath") }

  it "should return the player's name" do
    expect(p1.name).to eq "Kath"
  end

end
