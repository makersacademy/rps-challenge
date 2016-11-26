require './lib/weapon'

describe Weapon do

  subject(:rock) { described_class.new("Rock")}

  it "initalizes with a set of weapons" do
    expect(Weapon::WEAPONS).not_to be nil
  end

end
