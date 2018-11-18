require 'weapon'

describe Weapon do

  describe '#type' do
    it 'has a type' do
      weapon = described_class.new(:rock)
      expect(weapon.type).to eq :rock
    end
  end

end
