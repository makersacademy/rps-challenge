require 'computer_player'

describe ComputerPlayer do

  context 'on initialize' do
    it 'is named computer' do
      expect(subject.name).to eq "Computer"
    end
  end

  context 'when playing' do

    it 'selects it\'s move' do
      expect(subject.move).to satisfy ("Rock Paper Scissors") do |move|
        move == :rock || move == :paper || move == :scissors
      end
    end

    it 'displays it\'s move' do
      move = subject.move
      expect(subject.action).to eq move
    end

  end

end
