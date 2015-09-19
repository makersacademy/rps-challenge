require 'computer_player'

describe ComputerPlayer do

  describe "#initialize/new" do
    it 'initialize with a default name of Computer Player' do
      expect(subject.name).to eq('Computer Player')
    end

    it 'can set name of the player on initialization, which can be read' do
      computer_player = ComputerPlayer.new('Deep Blue')
      expect(computer_player.name).to eq('Deep Blue')
    end
  end

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
