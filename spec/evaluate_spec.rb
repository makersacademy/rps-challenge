require 'evaluate'

describe Evaluate do

  let(:subject) { Evaluate.new }

  describe '#evaluate' do
    it 'returns player 1 as the winner' do
      expect(subject.evaluate(["Rock", "Scissors"])).to eq "player_1_win"
    end
    it 'returns player 2 as the winner' do
      expect(subject.evaluate(["Scissors", "Rock"])).to eq "player_2_win"
    end
    it 'returns its a draw' do
      expect(subject.evaluate(["Scissors", "Scissors"])).to eq "draw"
    end
  end

end
