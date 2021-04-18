require 'game'

describe Game do
  describe '#draw?' do
    it 'returns true if it is a draw' do
      allow(Computer).to receive(:choice).and_return('paper')
      expect(subject.draw?('paper')).to be true
    end

    it 'returns false if different choices' do
      allow(Computer).to receive(:choice).and_return('paper')
      expect(subject.draw?('rock')).to be false
    end
  end

  describe '#win?' do
    it 'returns true if player wins' do
      allow(Computer).to receive(:choice).and_return('paper')
      expect(subject.win?('scissors')).to be true
    end

    it 'returns false if player looses' do
      allow(Computer).to receive(:choice).and_return('paper')
      expect(subject.win?('rock')).to be false
    end

    it 'returns false if player looses' do
      allow(Computer).to receive(:choice).and_return('scissors')
      expect(subject.win?('paper')).to be false
    end
  end
end
