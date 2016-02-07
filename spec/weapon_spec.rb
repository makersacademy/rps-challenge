require 'weapon'

describe Weapon do
  subject(:weapon)      { described_class.new(:rock) }

  describe '#type' do
    it 'returns the weapon type' do
      expect(weapon.type).to eq :rock
    end
  end

  describe '#beats?' do
    context 'if passed a weapon that it can beat' do
      let(:inferior_weapon) { described_class.new(:scissors) }

      it 'returns true' do
        expect(weapon.beats?(inferior_weapon)).to be_truthy
      end
    end

    context 'if passed a weapon that it cannot beat' do
      let(:superior_weapon) { described_class.new(:paper) }

      it 'returns false' do
        expect(weapon.beats?(superior_weapon)).to be_falsy
      end
    end
  end
end
