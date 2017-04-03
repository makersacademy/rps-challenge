require 'computer_weapon_choice'

describe ComputerWeaponChoice do
  let(:computer_weapon) {described_class.new}

  describe '#initialize  -- srand 123' do
    it 'expects the instance to be created with a randomized choice of weapon' do
      expect(computer_weapon.choice).to eq(:scissors)
    end
  end
end
