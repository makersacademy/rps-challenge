require 'game'

describe Game do
  describe '#draw?' do
    it 'returns true if it is a draw' do
      allow_any_instance_of(Game).to receive(:rand).and_return(1)
      expect(subject.draw?('paper')).to be true
    end

    it 'returns false if different choices' do
      allow_any_instance_of(Game).to receive(:rand).and_return(1)
      expect(subject.draw?('rock')).to be false
    end
  end

  describe '#win?' do
    it 'returns true if player wins' do
      allow_any_instance_of(Game).to receive(:rand).and_return(1)
      p subject.computer_choice
      expect(subject.win?('scissors')).to be true
    end

    it 'returns false if player looses' do
      allow_any_instance_of(Game).to receive(:rand).and_return(1)
      expect(subject.win?('rock')).to be false
    end

    it 'returns false if player looses' do
      allow_any_instance_of(Game).to receive(:rand).and_return(2)
      expect(subject.win?('paper')).to be false
    end
  end
end