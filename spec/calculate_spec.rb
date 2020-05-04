require 'calculate'

describe Calculate do 

  subject(:calculate) {described_class.new(:player_1_move, :player_2_move)}

  describe '#result' do
    it 'scissors vs scissors' do  
      calculate.instance_variable_set(:@player_1_move, "Scissors")
      calculate.instance_variable_set(:@player_2_move, "Scissors")
      expect(calculate.result).to eq "Draw"
    end
    it 'scissors vs rock' do  
      calculate.instance_variable_set(:@player_1_move, "Scissors")
      calculate.instance_variable_set(:@player_2_move, "Rock")
      expect(calculate.result).to eq "Player 2 Wins"
    end
    it 'scissors vs paper' do  
      calculate.instance_variable_set(:@player_1_move, "Scissors")
      calculate.instance_variable_set(:@player_2_move, "Paper")
      expect(calculate.result).to eq "Player 1 Wins"
    end
  end
end

