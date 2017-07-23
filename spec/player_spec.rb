require 'player'

describe Player do
  subject(:player) { described_class.new("Yulia")}

  it "returns the name of the player" do
    expect(subject.name).to eq "Yulia"
  end

end
