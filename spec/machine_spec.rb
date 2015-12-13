require 'machine'

describe Machine do
  subject(:machine) { described_class.new }

  describe '#chosen_weapon' do
    it 'returns a random weapon' do
      expect(Machine::WEAPON).to include machine.chosen_weapon
    end
  end
end
