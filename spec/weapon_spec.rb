require 'weapon'

describe Weapon do
  let(:weapon_name) { 'rock' }
  subject(:weapon) { described_class.new(weapon_name) }

  describe '#type' do
    it 'tells us the type of weapon' do
      expect(weapon.type).to eq :rock
    end
  end

  describe '#beats?' do
    let(:rule) { { rock: [:scissors] } }
    let(:weapon2) { described_class.new('scissors') }
    it 'tells us if a weapon beats another weapon' do
      stub_const("Game::RULES", rule)
      expect(weapon.beats?(weapon2)).to eq true
    end
  end
end
