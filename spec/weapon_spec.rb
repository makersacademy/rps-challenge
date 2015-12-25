require 'weapon'

describe Weapon do
  subject(:rock) { described_class.new('rock') }

  describe '#type' do
    it 'returns the weapon\'s type' do
      expect(rock.type).to eq 'rock'
    end
  end
end
