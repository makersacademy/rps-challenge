require 'player'

describe Player do
  subject(:nabille) { described_class.new("Nabille") }
  subject(:computer) { described_class.new("Computer") }
  let(:weapon) { double :weapon }

  describe '#choose_rock' do
    it 'should select the rock weapon' do
      expect(nabille.choose_rock).to eq :rock
    end
  end

  describe '#choose_paper' do
    it 'should select the rock weapon' do
      expect(nabille.choose_paper).to eq :paper
    end
  end

  describe '#choose_scissors' do
    it 'should select the rock weapon' do
      expect(nabille.choose_scissors).to eq :scissors
    end
  end

  describe '#choose_weapon' do
    it 'should return a random weapon' do
      allow(weapon).to receive(:random_weapon).and_return(:rock)
      expect(nabille.choose_rock).to eq :rock
    end
  end

end
