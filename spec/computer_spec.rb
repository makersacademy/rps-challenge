require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#play_hand' do

    it 'picks a rock' do
    expect(computer).to receive(:play_hand).and_return(:rock)
      expect(computer.play_hand).to eq :rock
    end


    it 'picks paper' do
      expect(computer).to receive(:play_hand).and_return(:paper)
      computer.play_hand
    end

    it 'picks scissors' do
      expect(computer).to receive(:play_hand).and_return(:scissors)
      computer.play_hand
    end
  end
end
