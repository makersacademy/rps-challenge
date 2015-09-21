require 'computer_player'

describe ComputerPlayer do

  describe "#initialize/new" do
    it 'initialize with a default name of Computer Player' do
      expect(subject.name).to eq('Computer Player')
    end

    it 'initialize with a default game type of RPS' do
      expect(subject.variant).to eq(:rps)
    end

    it 'can set name of the player on initialization, which can be read' do
      computer_player = ComputerPlayer.new('Deep Blue')
      expect(computer_player.name).to eq('Deep Blue')
    end
  end

  describe '#make_choice' do
    it 'sometimes plays rock with default game type of RPS' do
      srand(999)
      subject.make_choice
      expect(subject.choice).to eq(:rock)
    end

    it 'sometimes plays paper with default game type of RPS' do
      srand(1001)
      subject.make_choice
      expect(subject.choice).to eq(:paper)
    end

    it 'sometimes plays scissors with default game type of RPS' do
      srand(1004)
      subject.make_choice
      expect(subject.choice).to eq(:scissors)
    end

    it 'sometimes plays rock with game type of RPSLS' do
      computer_player = ComputerPlayer.new('Deep Blue',:rpsls)
      srand(1031)
      computer_player.make_choice
      expect(computer_player.choice).to eq(:rock)
    end

    it 'sometimes plays paper with game type of RPSLS' do
      computer_player = ComputerPlayer.new('Deep Blue',:rpsls)
      srand(1041)
      computer_player.make_choice
      expect(computer_player.choice).to eq(:paper)
    end

    it 'sometimes plays scissors with game type of RPSLS' do
      computer_player = ComputerPlayer.new('Deep Blue',:rpsls)
      srand(1054)
      computer_player.make_choice
      expect(computer_player.choice).to eq(:scissors)
    end

    it 'sometimes plays lizard with game type of RPSLS' do
      computer_player = ComputerPlayer.new('Deep Blue',:rpsls)
      srand(1039)
      computer_player.make_choice
      expect(computer_player.choice).to eq(:lizard)
    end

    it 'sometimes plays spock with game type of RPSLS' do
      computer_player = ComputerPlayer.new('Deep Blue',:rpsls)
      srand(1050)
      computer_player.make_choice
      expect(computer_player.choice).to eq(:spock)
    end
  end

end
