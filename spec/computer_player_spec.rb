require 'computer_player'

describe ComputerPlayer do

  describe '#choice' do

    it 'sometimes plays rock' do
      srand(999)
      expect(subject.choice).to eq(:rock)
    end

    it 'sometimes plays scissors' do
      srand(1004)
      expect(subject.choice).to eq(:scissors)
    end

    it 'sometimes plays paper' do
      srand(1001)
      expect(subject.choice).to eq(:paper)
    end
  end

end
