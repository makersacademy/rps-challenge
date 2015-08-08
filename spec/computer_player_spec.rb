require 'computer_player'

describe ComputerPlayer do

  context '#initialize computer player class' do
    it 'should contain rock paper and scissors as valid moves' do
      expect(subject.valid_moves).to eq [:rock, :paper, :scissors]
    end
  end

  context '#randomly_chooses' do
    it 'should choose a random option from valid moves' do
      allow(subject.valid_moves).to receive(:sample) { :rock }
      expect(subject.randomly_chooses).to eq :rock
    end
  end

end