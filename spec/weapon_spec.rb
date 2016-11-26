require './lib/weapon'

describe Weapon do

  subject(:rock) { described_class.new("Rock")}

  let(:paper) { double(:paper) }
  let(:scissors) { double(:scissors) }

  it "creates a symbol for user input on initialization" do
    expect(rock.weapon).to eq :Rock
  end

  it "initalizes with a set of weapons" do
    expect(Weapon::WEAPONS).not_to be nil
  end

end
