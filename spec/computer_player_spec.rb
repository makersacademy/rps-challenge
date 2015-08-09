require 'computer_player'

describe ComputerPlayer do

  context '#initialize computer player class' do
    it 'should contain rock paper and scissors as valid moves' do
      expect(subject.valid_moves).to eq [:rock, :paper, :scissors]
    end

    it 'should contain a win counter' do
      expect(subject.win_counter).to eq 0
    end
  end

  context '#randomly_choose' do
    it 'should choose a random option from valid moves' do
      allow(subject.valid_moves).to receive(:sample) { :rock }
      expect(subject.randomly_choose).to eq :rock
    end

    it 'should access and update final move' do
      expect(subject.randomly_choose).to eq subject.final_move
    end
  end

  context '#wins' do
    it 'should increase win counter' do
      wins_before = subject.win_counter
      expect(subject.wins).to eq wins_before + 1
    end
  end

end