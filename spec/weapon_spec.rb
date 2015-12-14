require 'weapon'

describe Weapon do
  subject(:weapon) {described_class.new}
  let(:p1_choice) {:rock}
  let(:computer) {:scissors}

  context 'Judges choices' do
    describe 'when different' do
      it '#beats' do
        expect(weapon.beats(p1_choice, computer)).to eq true
      end
    end

    describe 'when are the same' do
      it '#draw?' do
        expect(weapon.draw(p1_choice, computer)).to eq false
      end
    end
  end

  describe '#judge' do
    it 'displays result' do
      expect(weapon.judge(p1_choice, computer)).to eq :Win
    end
  end
end
