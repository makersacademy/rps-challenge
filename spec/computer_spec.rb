require 'computer'

describe Computer do
  context 'when asked to pick an option' do
    it 'returns a random choice of rock, paper or scissors' do
      allow(Kernel).to receive(:rand) { 1 }
      subject.update_choice
      expect(subject.choice).to eq 'Rock'
    end
    it 'returns a random choice of paper' do
      allow(Kernel).to receive(:rand) { 2 }
      subject.update_choice
      expect(subject.choice).to eq 'Paper'
    end
    it 'returns a random choice of scissors' do
      allow(Kernel).to receive(:rand) { 3 }
      subject.update_choice
      expect(subject.choice).to eq 'Scissors'
    end
  end
end
