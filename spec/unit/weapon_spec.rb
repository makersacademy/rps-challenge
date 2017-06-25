require 'weapon'

describe Weapon do
  let(:weapon)   { described_class.new('rock') }
  let(:paper)    { described_class.new('paper') }
  let(:scissors) { described_class.new('scissors') }
  # it { is_expected.to be_a Weapon }

  describe 'Initialization' do
    # it { is_expected.to respond_to :type }

    it 'is a valid type of weapon' do
      expect(weapon.type).to eq :rock
    end
  end

  describe 'Rules' do
    it 'knows that rock beats scissors' do
      expect(Weapon::RULES).to include(rock: :scissors)
    end

    it 'knows that scissors beats paper' do
      expect(Weapon::RULES).to include(scissors: :paper)
    end

    it 'knows that paper beats rock' do
      expect(Weapon::RULES).to include(paper: :rock)
    end
  end

  describe '<=>' do
    it 'returns 1 on a win' do
      expect(weapon <=> scissors).to eq 1
    end

    it 'returns -1 on a loss' do
      expect(weapon <=> paper).to eq -1
    end

    it 'returns 0 on a draw' do
      expect(weapon <=> weapon).to eq 0
    end
  end
end
