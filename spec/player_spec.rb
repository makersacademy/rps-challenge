require 'player'

describe Player do
  it "can register a name" do
    player = described_class.new "John"
    expect(player.name).to eq "John"
  end
  it "can select rock" do
    player = described_class.new "John"
    expect(player.select "Rock").to eq [:rock]
  end
  it "can select paper" do
    player = described_class.new "John"
    expect(player.select "Paper").to eq [:paper]
  end
  it "can select scissors" do
    player = described_class.new "John"
    expect(player.select "Scissors").to eq [:scissors]
  end
  it "is ready when made selection" do
    player = described_class.new "John"
    player.select "Rock"
    expect(player.ready?).to eq true
  end
end