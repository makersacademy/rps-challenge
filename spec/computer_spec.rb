require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#play_hand' do

    it 'picks a rock' do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:rock)
      expect(computer.play_hand).to eq :rock
    end
    it 'picks paper' do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:paper)
      expect(computer.play_hand).to eq :paper
    end
    it 'picks scissors' do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:scissors)
      expect(computer.play_hand).to eq :scissors
    end
  end
end
