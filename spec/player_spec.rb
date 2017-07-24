require 'player'

describe Player do
  subject(:sam) { described_class.new("Sam") }

  it "checks player's name" do
    expect(sam.name).to eq "Sam"
  end
end
