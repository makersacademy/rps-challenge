require 'player'

describe Player do
  subject(:player) { described_class.new("Yulia") }
  let(:weapon) { double :weapon }

  it "returns the name of the player" do
    expect(subject.name).to eq "Yulia"
  end

  it "able to choose the weapon" do
    expect(subject.options(weapon)).to eq weapon
  end

end
