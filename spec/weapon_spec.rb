require 'weapon.rb'

describe Weapon do
  let(:weapon) { described_class.new }

  it 'can have a range of weapons' do
    expect(weapon.weapon_choice).to eq(["Rock", "Paper", "Scissors"])
  end
end
