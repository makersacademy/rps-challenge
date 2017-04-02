require 'player_weapon_choice'

describe PlayerWeaponChoice do

  let(:weapon) {described_class.new}
  describe '#choose' do
    it 'gets and stores the weapon choice of the player' do
      weapon.choose(:rock)
      expect(weapon.choice).to eq(:rock)
    end
  end
end
