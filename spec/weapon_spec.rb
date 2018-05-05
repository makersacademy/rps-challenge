require 'weapon'

describe Weapon do

  subject(:weapon) { described_class.new }

  context '#weapon' do
    it 'stores three weapons' do
      expect(weapon.weapon).to include(:paper)
      expect(weapon.weapon).to include(:scissors)
      expect(weapon.weapon).to include(:rock)
    end
  end
end
