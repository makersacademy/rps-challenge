require 'player'

describe Player do

  subject { described_class.new("Ed") }

  it "returns the player's name" do
    expect(subject.name).to eq "Ed"
  end

  it "player weapon default is nil" do
    expect(subject.weapon).to eq nil
  end

  it "can change player weapon" do
    subject.choose("Rock")
    expect(subject.weapon).to eq "Rock"
  end

end
