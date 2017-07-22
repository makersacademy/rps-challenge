require 'weapon'

describe Weapon do
  subject(:weapon_choice) { described_class.new(weapon) }
  let(:weapon) { double(:weapon) }

  describe '/weapon-choice' do
    it 'returns the weapon' do
      expect(weapon_choice.weapon).to eq(weapon)
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
