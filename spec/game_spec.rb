require "./lib/game"

describe Game do

  subject = described_class.new

  it "checks that the game exists" do
    expect(subject).to be_an_instance_of(described_class)
  end

  it "finds the rock choice" do
    expect(subject.options).to include :rock
  end

end
