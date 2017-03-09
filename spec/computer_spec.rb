require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#select_weapon' do
    it 'can select a rock to fight' do
      allow(computer).to receive(:select_weapon).and_return(:rock)
      expect(computer.select_weapon).to eq :rock
    end

    it 'can select paper to fight' do
      allow(computer).to receive(:select_weapon).and_return(:paper)
      expect(computer.select_weapon).to eq :paper
    end

    it 'can select scissors to fight' do
      allow(computer).to receive(:select_weapon).and_return(:scissors)
      expect(computer.select_weapon).to eq :scissors
    end
  end

end
