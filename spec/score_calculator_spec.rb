require 'score_calculator'


describe Score_Calculator do

let(:tie_move) { {:player_1 => 'rock', :player_2 => 'rock'} }

  describe '#rank' do
    it 'has a method called rank' do
      expect(subject).to respond_to(:rank).with(1).argument
    end
    it 'recognizes a draw' do
      expect(subject.rank tie_move).to eq 'Draw'
    end
    it 'returns the winning player if there is a winner' do
      rock = double()
      scissors = double()
      allow(rock).to receive(:beats?).with(scissors).and_return true
      allow(scissors).to receive(:beats?).with(rock).and_return false
      rock.beats?(scissors)
      scissors.beats?(rock)
      move = {'p1'=> rock, 'p2'=> scissors}
      expect(subject.rank move).to eq 'p1'
    end
  end


end