require 'computer'

describe Computer do
  subject(:computer) {described_class.new}
  # At this point I should make a dummy Rules class and a dummy Weapon class
  # but it would be such a pain
  it "generates rock paper or scissors at random" do
    srand(1)
    expect(computer.weapon.name).to eq :scissors
  end
end
