require 'weapon'

describe Weapon do
  subject(:rock) { Weapon.new('Rock') }

  describe '/weapon-choice' do
    it 'returns the weapon' do
      expect(rock.weapon).to eq 'Rock'
    end
  end
end
