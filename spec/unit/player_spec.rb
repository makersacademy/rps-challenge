require 'player'

describe Player do

  subject { described_class.new("Ed") }

  it "returns the player's name" do
    expect(subject.name).to eq "Ed"
  end

end
