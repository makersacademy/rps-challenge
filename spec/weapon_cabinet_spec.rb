require 'weapon_cabinet'

describe WeaponCabinet do

  # Other mocks
  let(:some_weapon) { double(:some_weapon) }
  let(:weapon_class) { double(:weapon_class, new: some_weapon) }

  # Cabinets
  let(:subject) { described_class.new(weapon_class) }

  describe '#initialize' do
    it 'has an arsenal' do
      expect(subject.arsenal).to eq [some_weapon] * 3
    end
  end
end
