require 'player'

describe Player do
  subject(:player) {described_class.new("Digby")}

  it "Can have a name" do
    expect(player.name).to eq "Digby"
  end
end
