require 'computer'
describe Computer do
  describe '#choice' do
    it 'stores the choice ROCK' do
      srand(0)
      expect(subject.choice).to eq 'ROCK'
    end
    it 'stores the choice PAPER' do
      srand(1)
      expect(subject.choice).to eq 'PAPER'
    end
    it 'stores the choice SCISSORS' do
      srand(3)
      expect(subject.choice).to eq 'SCISSORS'
    end
  end
end
