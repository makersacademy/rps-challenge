require 'weapon'

describe Weapon do
  subject(:rock) {described_class.new("rock")}
  subject(:scissors) {described_class.new("scissors")}
  # Should have a dummy rules class here too
  it "when rock can beat scissors" do
    expect(rock.beats(scissors)).to eq true
  end
end
