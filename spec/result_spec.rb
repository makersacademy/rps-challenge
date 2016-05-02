require 'result'

describe Result do
  describe '#judge' do
    it 'returns draw when the two players choose the same option' do
      expect(Result.new("rock", "rock").judge).to eq :draw
    end

    it 'returns win for player when player beats computer' do
      expect(Result.new("rock", "scissors").judge).to eq :win
    end

    it 'returns lose when computer beats player' do
      expect(Result.new("scissors", "rock").judge).to eq :lose
    end
  end
end
