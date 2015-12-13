require 'weapon'

describe Weapon do
  subject(:rock) { described_class.new('Rock') }

  describe '#type' do
    it 'returns the weapon\'s type' do
      expect(rock.type).to eq 'Rock'
    end
  end
end
