require 'weapon'

describe Weapon do
  subject(:weapon) {described_class.new(p1_choice, p2_choice)}
  let(:p1_choice) {:rock}
  let(:p2_choice) {:scissors}

  context 'Judges choices' do
    describe 'when different' do
      it '#beats?' do
        expect(weapon.beats?).to eq true
      end
    end

    describe 'when are the same' do
      it '#draw' do
        expect(weapon.draw?).to eq false
      end
    end
  end

  describe '#judge' do
    it 'displays result' do
      expect(weapon.judge).to eq :Win
    end
  end
end
