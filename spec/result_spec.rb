require 'result'

describe Result do

  let(:result) { Result.new }
  let(:move) { "SCISSORS" }

  describe '#rock_verdict' do
    it 'should return "you win"' do
      expect(result.rock_verdict(move)).to eq 'You win!'
    end
  end

  describe '#paper_verdict' do
    it 'should return "you lose"' do
      expect(result.paper_verdict(move)).to eq 'You lose!'
    end
  end

  describe '#scissors_verdict' do
    it 'should return "draw"' do
      expect(result.scissors_verdict(move)).to eq 'Draw!'
    end
  end

end
