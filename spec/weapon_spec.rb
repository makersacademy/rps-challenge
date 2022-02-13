require 'weapon'

describe Weapon do
  describe 'add players' do
    let(:weapon) { described_class.new('paper') }
    it 'it expects initialise a type' do
      expect(weapon.type).to eq 'paper'
    end
  end

  describe 'beat?' do
    let(:weapon) { described_class.new('paper') }
    let(:weapon2) { described_class.new('scissors') }
    it 'it respond with false if one weapon is rock and the other is scissors' do
      expect(weapon.beat?(weapon2)).to eq false
    end
  end

end
