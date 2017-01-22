require 'weapons'

describe Weapon do
  subject(:weapon) do
    described_class.new(
      name: "Rock",
      inflictions: ["crushes"],
      weaknesses: ["covers", "vaporizes"]
    )
  end

  let(:scissors) { double(:scissors) }

  describe '#new' do
    context 'when initialised' do
      it 'has a name' do
        expect(weapon.name).to eq "Rock"
      end

      it 'has inflictions' do
        expect(weapon.inflictions).to include "crushes"
      end

      it 'has weaknesses' do
        expect(weapon.weaknesses).to include "vaporizes"
      end
    end
  end

  describe '#defeats' do
    it 'can be assigned losing opponents' do
      weapon.defeats(scissors)
      expect(weapon.wins_against).to include scissors
    end
  end
end
