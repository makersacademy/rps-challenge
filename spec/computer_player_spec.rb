require 'computer_player'

describe ComputerPlayer do
  describe '#initialize' do
    it 'sets name to Computer' do
      expect(subject.name).to eq 'Computer'
    end
    it 'returns the random rps choice' do
      srand(1)
      expect(subject.choice).to eq 'Paper'
    end
  end
end
