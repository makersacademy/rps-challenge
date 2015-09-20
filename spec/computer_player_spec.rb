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

  describe '#make_choice' do
    it 'sometimes plays rock' do
      srand(999)
      subject.make_choice
      expect(subject.choice).to eq(:rock)
    end

    it 'sometimes plays paper' do
      srand(1001)
      subject.make_choice
      expect(subject.choice).to eq(:paper)
    end

    it 'sometimes plays scissors' do
      srand(1004)
      subject.make_choice
      expect(subject.choice).to eq(:scissors)
    end


    it 'sometimes plays lizard' do
      srand(1005)
      subject.make_choice
      expect(subject.choice).to eq(:lizard)
    end

    it 'sometimes plays spock' do
      srand(1010)
      subject.make_choice
      expect(subject.choice).to eq(:spock)
    end
  end

end
