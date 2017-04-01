require 'game'

describe Game do
  subject(:choice) {described_class.new(:stub, :stub)}

  describe '#worker_outer' do
    it 'expects tie when choices are the same' do
      expect(subject.worker_outer('Rock', 'Rock')).to eq "You tie!"
    end

    it 'expects win when player wins' do
      expect(subject.worker_outer('Paper', 'Rock')).to eq 'You win!'
    end

    it 'expects lose when player loses' do
      expect(subject.worker_outer('Paper', 'Scissors')).to eq 'You lose!'
    end
  end
end
