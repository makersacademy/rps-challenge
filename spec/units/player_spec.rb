require "player"

describe Player do

  subject(:player) { described_class.new("Xena") }

  it "has a name" do
    expect(player.name).to eq "Xena"
  end

  it "makes a choice of R P or S" do
    player.make_choice("paper")
    expect(player.choice).to eq "paper"
  end

end
