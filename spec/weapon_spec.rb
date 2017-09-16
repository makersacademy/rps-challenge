require 'weapon.rb'

describe Weapon do
  let(:weapon) { described_class.new }

  it 'can have a range of weapons' do
    allow(weapon).to receive(:weapon_choice).and_return(:paper)
    expect(weapon.weapon_choice).to eq(:paper)
  end
end
