require "player"

describe Player do

  subject(:player) { described_class.new("Xena") }

  it "has a name" do
    expect(player.name).to eq "Xena"
  end 

end
