require 'player'

describe Player do
  subject(:player) {described_class.new("Fake name")}
  let(:weapon_class) {double :weapon_class, new: "dummy weapon"}
  it "can equip a weapon" do
    expect(subject.equip("whatever",weapon_class)).to eq "dummy weapon"
  end
end
