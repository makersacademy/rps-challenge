require 'player'

describe Player do
  subject(:player) {described_class.new("Ed")}
  it "has a name" do
    expect(player.name).to eq "Ed"
  end

  it "can make a choice" do
    player.make_choice('Scissors')
    expect(player.choice).to eq 'Scissors'
  end
end
