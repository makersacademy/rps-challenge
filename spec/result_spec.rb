require 'result'

describe Result do
  describe '#judge' do
    it 'returns draw when the two players choose the same option' do
      expect(Result.new(:stone, :stone).judge).to eq "draw"
    end

    it 'returns win for player when player beats computer' do
      expect(Result.new("rock", "scissors").judge).to eq "player wins"
    end

    it 'returns win for computer when computer beats player' do
      expect(Result.new("scissors", "rock").judge).to eq "computer wins"
    end
  end
end
