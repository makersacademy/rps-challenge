require 'player'

describe Player do

  let(:player) { described_class.new("Chris") }

  it "expects player to be able to initialize with a name" do
    expect(player.name).to eq "Chris"
  end

end
