require 'game'

describe Game do
  describe '#randomizer' do
    it 'returns a random output from the computer' do
      srand(4)
      expect(subject.randomizer).to eq('Scissors')
    end
  end

  describe '#winner' do
    it 'returns the winner if input is rock and paper' do
      expect(subject.winner('Rock', 'Paper')).to eq('You lose')
    end
    it 'returns the winner if input is paper and paper' do
      expect(subject.winner('Paper', 'Paper')).to eq('Draw')
    end
    it 'returns the winner if input is rock and scissors' do
      expect(subject.winner('Scissors', 'Paper')).to eq('You win!')
    end
    it 'returns the winner if input is rock and scissors' do
      expect(subject.winner('Paper', 'Rock')).to eq('You win!')
    end
  end
end
