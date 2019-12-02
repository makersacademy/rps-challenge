require 'player'
describe Weapon do
  subject(:default) {Weapon.new}
  it 'initialize a random item if no value set' do
    srand(3)
    expect(default.weapons).to eq("Scissors")
  end
end
