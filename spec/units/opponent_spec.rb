require 'opponent' 

describe Opponent do
  context 'new' do
    it 'randomly chooses rock' do
      srand(2)
      expect(Opponent.new.opponent_move.to_s).to eq "Rock"
    end

    it 'randomly chooses paper' do
      srand(1)
      expect(Opponent.new.opponent_move.to_s).to eq "Paper"
    end

    it 'randomly chooses scissors' do
      srand(3)
      expect(Opponent.new.opponent_move.to_s).to eq "Scissors"
    end
  end
end