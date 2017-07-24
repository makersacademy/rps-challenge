require 'weapon'

describe Weapon do
  subject(:weapon_choice) { described_class.new(weapon_type) }
  let(:weapon_type) { double(:weapon_type) }

  describe '/weapon-choice' do
    it 'returns the weapon' do
      #allow(weapon_choice).to receive(:weapon).and_return(weapon_type)
      allow(weapon_type).to receive(:capitalize). and_return(weapon_type)
      expect(weapon_choice.weapon).to eq(weapon_type)
    end

    it 'raises an error if the chosen weapon is not available' do
      new_weapon = Weapon.new("knife")
      expect { new_weapon.weapon=(new_weapon.weapon) }.to raise_error 'Please select Rock, Paper or Scissors'
    end
  end
end
      # allow(weapon_choice.weapon).to receive(:weapon=(:knife))
      # expect { weapon_choice.weapon=(weapon_choice.weapon) }.to raise_error 'Please select Rock, Paper or Scissors'
      # $weapon_choice.weapon=($weapon_choice.weapon)
