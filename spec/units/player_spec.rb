require 'player'

describe Player do

  example_name = "Matt"
  subject(:player) { described_class.new(example_name)}

  it "initializes with a name" do
    expect(player.name).to eq 'Matt'
  end
end
